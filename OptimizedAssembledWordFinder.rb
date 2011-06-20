class OptimizedAssembledWordFinder

  def find(words, dictionaryHashMap, maximumNumberOfLetters)
    assembledWords = []

    wordStartIndex = 0
    wordEndIndex = maximumNumberOfLetters - 1

    words.each do |word|
      for wordMiddleIndex in (0..(maximumNumberOfLetters - 2))
        firstSubWord = word[wordStartIndex..wordMiddleIndex]
        secondSubWord = word[(wordMiddleIndex + 1)..wordEndIndex]

        if(firstSubWord.eql?(dictionaryHashMap[firstSubWord]) && secondSubWord.eql?(dictionaryHashMap[secondSubWord]))
          assembledWords << word
        end
      end

    end

    return assembledWords
  end

end