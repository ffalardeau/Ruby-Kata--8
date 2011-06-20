require_relative "ReadableKataEight"
require_relative "OptimizeKataEight"


NUMBER_OF_LETTER_IN_SEARCHED_WORDS = 6

#ReadableKataEight.new.execute("/wordlist.txt", NUMBER_OF_LETTER_IN_SEARCHED_WORDS)
OptimizeKataEight.new.execute("/wordlist.txt", NUMBER_OF_LETTER_IN_SEARCHED_WORDS)