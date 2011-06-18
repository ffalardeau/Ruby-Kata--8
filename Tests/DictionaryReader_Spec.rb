require "../DictionaryReader"

describe DictionaryReader, "#getAllWords" do
  it "returns 0 words for an empty dictionary" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read(File.dirname(__FILE__)+"/../emptywordlist.txt")
    dictionaryReader.getAllWords.count.should == 0
  end
end

describe DictionaryReader, "#getAllWords" do
  it "returns 0 words if dictionary not found" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read("")
    dictionaryReader.getAllWords.count.should == 0
  end
end

describe DictionaryReader, "#getAllWords" do
  it "returns 45433 words if dictionary provided found" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read(File.dirname(__FILE__)+"/../wordlist.txt")
    dictionaryReader.getAllWords.count.should == 45433
  end
end

describe DictionaryReader, "#getAllWords" do
  it "first word of list provided should be Aarhus" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read(File.dirname(__FILE__)+"/../wordlist.txt")
    dictionaryReader.getAllWords[0].should == "Aarhus"
  end
end

describe DictionaryReader, "#getAllWords" do
  it "last word of list provided should be Zurich" do
    dictionaryReader = DictionaryReader.new
    dictionaryReader.read(File.dirname(__FILE__)+"/../wordlist.txt")
    words = dictionaryReader.getAllWords
    words[words.count - 1].should == "Zurich"
  end
end

