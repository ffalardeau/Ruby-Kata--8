class WordArrayFilter

  def getWordsWithXLetter(numberOfLetter, wordArray)
    acceptedWordArray = []
    wordArray.each do |word|
      next if (word.length != numberOfLetter)
      acceptedWordArray << word
    end

    return acceptedWordArray
  end

  def getWordsWithLessThanXLetter(numberOfLetter, wordArray)
    acceptedWordArray = []

    wordArray.each do |word|
      next if (word.length >= numberOfLetter)
      acceptedWordArray << word
    end

    return acceptedWordArray
  end
end