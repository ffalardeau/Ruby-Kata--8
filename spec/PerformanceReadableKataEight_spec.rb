require "../ReadableKataEight"

describe DictionaryReader, "#execute" do
  it "returns performance" do
    ReadableKataEight.new.execute("/wordlist.txt")
  end
end