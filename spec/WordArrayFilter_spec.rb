require 'spec_helper'

describe WordArrayFilter, "#get_words_with_x_letter" do
  it "returns 2 words for a list containing 2 six letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.get_words_with_x_letter(6, wordArray).count.should == 2
  end
end

describe WordArrayFilter, "#get_words_with_x_letter" do
  it "returns 0 words for a list containing 0 eight letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.get_words_with_x_letter(8, wordArray).count.should == 0
  end
end

describe WordArrayFilter, "#get_words_with_less_than_x_letter" do
  it "returns 1 words for a list containing 1 less than five letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.get_words_with_less_than_x_letter(5, wordArray).count.should == 1
  end
end

describe WordArrayFilter, "#get_words_with_less_than_x_letter" do
  it "returns 0 words for a list containing 0 less than two letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.get_words_with_less_than_x_letter(2, wordArray).count.should == 0
  end
end

describe WordArrayFilter, "#get_words_with_less_than_x_letter" do
  it "returns 3 words for a list containing 3 less than six letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.get_words_with_less_than_x_letter(6, wordArray).count.should == 3
  end
end

describe WordArrayFilter, "#get_words_that_starts_with_letter" do
  it "returns 2 words for a list containing 2 words that starts with 'a' " do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.get_words_that_starts_with_letter('a', wordArray).count.should == 2
  end
end

