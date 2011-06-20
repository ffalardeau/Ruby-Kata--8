require_relative "WordArrayFilter"

class AssembledWordFinder

  def find(words, splitDictionary)
    assembledWords = []

    words.each do |word|
      startWithWords = Array.new

      firstLetter = word[0].downcase
      firstLetterWordArray = splitDictionary[firstLetter]

      firstLetterWordArray.each do |firstLetterWord|
        if( (word.start_with? firstLetterWord) && !word.eql?(firstLetterWord))
          startWithWords << firstLetterWord
        end
      end

      next if(startWithWords.empty?)

      startWithWords.each do |startWithWord|
        secondWordFirstLetter = word[startWithWord.length].downcase
        secondLetterWordArray = splitDictionary[secondWordFirstLetter]

        secondLetterWordArray.each do |secondLetterWord|
          secondHalfWordStartIndex = startWithWord.length
          secondHalfWordEndIndex = word.length()-1
          secondHalfWord = word[secondHalfWordStartIndex..secondHalfWordEndIndex]

          if(secondHalfWord.eql?(secondLetterWord))
            assembledWords << word
            next
          end
        end
      end
    end

    return assembledWords
  end

end