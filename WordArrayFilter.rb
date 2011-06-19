class WordArrayFilter

  def get_words_with_x_letter(numberOfLetter, words)
    acceptedWords = Array.new
    words.each do |word|
      next if (word.length != numberOfLetter)
      acceptedWords << word
    end

    return acceptedWords
  end

  def get_words_with_less_than_x_letter(numberOfLetter, words)
    acceptedWords = Array.new

    words.each do |word|
      next if (word.length >= numberOfLetter)
      acceptedWords << word
    end

    return acceptedWords
  end

  def get_words_that_starts_with_letter(letter, words)
    acceptedWords = Array.new
    words.each do |word|
      next if (!word.downcase.start_with? letter)
      acceptedWords << word
    end

    return acceptedWords
  end


end