class ReadableKataEight

  def main
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read(File.dirname(__FILE__) + "/wordlist.txt")
    words = dictionaryReader.getAllWords

    wordArrayFilter = WordArrayFilter.new
    sixLetterWords = wordArrayFilter.getWordsWithXLetter(6, words)

    assembledWordFinder = AssembledWordFinder.new
    assembledWords = assembledWordFinder.find(sixLetterWords)

    assembledWords.each do |word|
      putline word
    end
  end

end