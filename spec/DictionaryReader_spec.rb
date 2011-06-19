require "../DictionaryReader"

describe DictionaryReader, "#get_all_words" do
  it "returns 0 words for an empty dictionary" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read(File.dirname(__FILE__)+"/../emptywordlist.txt")
    dictionaryReader.get_all_words.count.should == 0
  end
end

describe DictionaryReader, "#get_all_words" do
  it "returns 0 words if dictionary not found" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read("")
    dictionaryReader.get_all_words.count.should == 0
  end
end

describe DictionaryReader, "#get_all_words" do
  it "returns 45433 words if dictionary provided found" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read(File.dirname(__FILE__)+"/../wordlist.txt")
    dictionaryReader.get_all_words.count.should == 45433
  end
end

describe DictionaryReader, "#get_all_words" do
  it "first word of list provided should be Aarhus" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read(File.dirname(__FILE__)+"/../wordlist.txt")
    dictionaryReader.get_all_words[0].should == "Aarhus"
  end
end

describe DictionaryReader, "#get_all_words" do
  it "last word of list provided should be Zurich" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read(File.dirname(__FILE__)+"/../wordlist.txt")
    words = dictionaryReader.get_all_words
    words[words.count - 1].should == "Zurich"
  end
end

