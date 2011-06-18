require "../AssembledWordFinder"

describe AssembledWordFinder, "#find" do
  it "returns 0 word that was assembled from 2 smaller words" do
    assembledWordFinder = AssembledWordFinder.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advice"]

    assembledWordFinder.find(wordArray).count.should == 0
  end
end


describe AssembledWordFinder, "#find" do
  it "returns 1 word that was assembled from 2 smaller words" do
    assembledWordFinder = AssembledWordFinder.new
    wordArray = ["hello", "crazy", "Adonis", "Bye", "advice", "ad", "vice"]

    words = assembledWordFinder.find(wordArray)
    words.count.should == 1
    words[0].should == "advice"
  end
end

describe AssembledWordFinder, "#find" do
  it "returns 3 word that was assembled from 2 smaller words" do
    assembledWordFinder = AssembledWordFinder.new
    wordArray = ["hello", "hell", "o", "crazy", "Adonis", "Ado", "nis", "Bye", "advice", "ad", "vice"]

    words = assembledWordFinder.find(wordArray)
    words.count.should == 3
    #words[0].should == "advice"
  end
end

