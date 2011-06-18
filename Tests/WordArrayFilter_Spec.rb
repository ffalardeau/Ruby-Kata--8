require "../WordArrayFilter"

describe WordArrayFilter, "#getWordsWithXLetter" do
  it "returns 2 words for a list containing 2 six letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.getWordsWithXLetter(6, wordArray).count.should == 2
  end
end

describe WordArrayFilter, "#getWordsWithXLetter" do
  it "returns 0 words for a list containing 0 eight letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.getWordsWithXLetter(8, wordArray).count.should == 0
  end
end

describe WordArrayFilter, "#getWordsWithLessThenXLetter" do
  it "returns 1 words for a list containing 1 less than five letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.getWordsWithLessThanXLetter(5, wordArray).count.should == 1
  end
end

describe WordArrayFilter, "#getWordsWithLessThenXLetter" do
  it "returns 0 words for a list containing 0 less than two letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.getWordsWithLessThanXLetter(2, wordArray).count.should == 0
  end
end

describe WordArrayFilter, "#getWordsWithLessThenXLetter" do
  it "returns 3 words for a list containing 3 less than six letter words" do
    wordArrayFilter = WordArrayFilter.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advise"]

    wordArrayFilter.getWordsWithLessThanXLetter(6, wordArray).count.should == 3
  end
end