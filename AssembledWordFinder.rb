class AssembledWordFinder
  def find(wordArray)
    assembledWords = []

    wordArray.each do |word|
      wordArray.each do |word2|
        if(word != word2)
          wordArray.each do |completeWord|
            if (word + word2 == completeWord)
              assembledWords << completeWord

            end
          end
        end
      end
    end
    assembledWords
  end
end