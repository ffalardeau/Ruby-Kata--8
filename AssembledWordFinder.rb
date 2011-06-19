require_relative "WordArrayFilter"

class AssembledWordFinder

#  def CheckAssembledWords(assembledWords, assemblyWords1, assemblyWords2,  completeWords)
#    assemblyWords1.each do |word|
#      assemblyWords2.each do |word2|
#        if (word != word2)
#          completeWords.each do |completeWord|
#            if (word + word2 == completeWord)
#              puts "Assembled word found: " + completeWord
#
#              assembledWords << completeWord
#
#            end
#          end
#        end
#      end
#    end
#  end

  def find(wordArray, splitDictionary)
    assembledWords = []

    wordArray.each do |word|
      includedWords = Array.new

      firstLetterArray = splitDictionary[word[0].downcase]
      firstLetterArray.each do |firstLetterWord|
        if( (word.start_with? firstLetterWord) && !word.eql?(firstLetterWord))
          includedWords << firstLetterWord
        end
      end

      next if(includedWords.empty?)


      #includedWords.sort! { |a,b| a.length > b.length}
      includedWords.each do |includedWord|


        middleLetterArray = splitDictionary[word[includedWord.length].downcase]
        middleLetterArray.each do |middleLetterWord|
          endOfWord = word[includedWord.length..word.length()-1]

          if(endOfWord.eql?(middleLetterWord))
            assembledWords << word
            #puts word + " :end of word: " + endOfWord

            next
          end
        end
      end
    end

    #wordArrayFilter = WordArrayFilter.new
    #lessThanSix = wordArrayFilter.get_words_with_less_than_x_letter(6, wordArray)
#puts lessThanSix.count.to_s + " word(s) with less than 6 letters"

    #fiveLetterWord = wordArrayFilter.get_words_with_x_letter(5,wordArray)
    #fourLetterWord = wordArrayFilter.get_words_with_x_letter(4,wordArray)
    #threeLetterWord = wordArrayFilter.get_words_with_x_letter(3,wordArray)
    #twoLetterWord = wordArrayFilter.get_words_with_x_letter(2,wordArray)
    #oneLetterWord = wordArrayFilter.get_words_with_x_letter(1,wordArray)

    #wordArray.reject! { |word| word.length < 6 }
#puts wordArray.count.to_s + " word(s) left with 6 letters"

    #CheckAssembledWords(assembledWords, fiveLetterWord, oneLetterWord,  wordArray)
    #CheckAssembledWords(assembledWords, oneLetterWord, fiveLetterWord,  wordArray)
    #CheckAssembledWords(assembledWords, fourLetterWord, twoLetterWord,  wordArray)
    #CheckAssembledWords(assembledWords, twoLetterWord, fourLetterWord,  wordArray)
    #CheckAssembledWords(assembledWords, threeLetterWord, threeLetterWord,  wordArray)

    return assembledWords
  end
end