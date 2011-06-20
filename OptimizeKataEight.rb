require_relative "DictionaryReader"
require_relative "WordArrayFilter"
require_relative "OptimizedAssembledWordFinder"

class OptimizeKataEight
    attr_reader :wordArrayFilter

    def initialize
      @wordArrayFilter = WordArrayFilter.new
    end

  def execute(dictionary_path, maximumNumberOfLetters)
        puts "Reading dictionary ..."

        dictionaryReader = DictionaryReader.new
        dictionaryReader.read(File.dirname(__FILE__) + dictionary_path)
        dictionaryWords = dictionaryReader.get_all_words
        puts dictionaryWords.count.to_s + " words were read."


        sixLetterWords = @wordArrayFilter.get_words_with_x_letter(maximumNumberOfLetters, dictionaryWords)
        puts sixLetterWords.count.to_s + " six letter words were found."

        dictionaryHash = build_dictionary_hashmap(dictionaryWords, maximumNumberOfLetters)

        assembledWordFinder = OptimizedAssembledWordFinder.new
        assembledWords = assembledWordFinder.find(sixLetterWords, dictionaryHash, maximumNumberOfLetters)

        puts "The assembled words were : "
        assembledWords.each do |word|
          puts word
        end
        puts assembledWords.length.to_s + " assembled words were found"

  end

  def build_dictionary_hashmap(words, maximumNumberOfLetters)
    dictionaryHashMap = Hash.new

    fiveLetterWords = @wordArrayFilter.get_words_with_less_than_x_letter(maximumNumberOfLetters, words)
    fiveLetterWords.each do |word|
      dictionaryHashMap[word] = word
    end

    return dictionaryHashMap
  end

end