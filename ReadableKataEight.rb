require_relative "DictionaryReader"
require_relative "WordArrayFilter"
require_relative "AssembledWordFinder"

class ReadableKataEight
    attr_reader :wordArrayFilter

    def initialize
      @wordArrayFilter = WordArrayFilter.new
    end

    def execute(dictionary_path)
        puts "Reading dictionary ..."

        dictionaryReader = DictionaryReader.new
        dictionaryReader.read(File.dirname(__FILE__) + dictionary_path)
        dictionaryWords = dictionaryReader.get_all_words
        puts dictionaryWords.count.to_s + " words were read."

        sixLetterWords = @wordArrayFilter.get_words_with_x_letter(6, dictionaryWords)
        puts sixLetterWords.count.to_s + " six letter words were found."

        splitDictionaryHash = split_dictionary(dictionaryWords)

        assembledWordFinder = AssembledWordFinder.new
        assembledWords = assembledWordFinder.find(sixLetterWords, splitDictionaryHash)

#        assembledWords.each do |word|
#          puts "XX: " + word
#        end
        puts assembledWords.length.to_s + " assembled words were found"

    end

    def split_dictionary(words)
      splittedDictionaryHash = Hash.new
      letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                 'o', 'p', 'q', 'r', 's', 't', 'u','v', 'w', 'x','y', 'z']

      fiveLetterWords = @wordArrayFilter.get_words_with_less_than_x_letter(6, words)

      letters.each do |letter|
        splittedDictionaryHash[letter] = @wordArrayFilter.get_words_that_starts_with_letter(letter, fiveLetterWords)
      end

      return splittedDictionaryHash
    end

end