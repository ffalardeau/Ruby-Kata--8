require 'spec_helper'

describe DictionaryReader, "#get_all_words" do
  context 'when the dictionary is empty' do
    it 'should return 0 words' do
      subject.read(File.dirname(__FILE__)+"/../emptywordlist.txt")
      expect(subject.get_all_words.count).to eq(0)
    end
  end

  context 'when the dictionary is not found' do
    it 'should return 0 words' do
      subject.read("")
      expect(subject.get_all_words.count).to eq(0)
    end
  end

  context 'when the dictionay is found and not empty' do
    before(:each) do
      subject.read(File.dirname(__FILE__)+"/../wordlist.txt")
    end

    it "should have the same number of words as it's source" do
      expect(subject.get_all_words.count).to eq(45433)
    end

    it "should have the same first word as it's source" do
      expect(subject.get_all_words[0]).to eq("Aarhus")
    end

    it "should have the same last word as it's source" do
      words = subject.get_all_words
      expect(words[words.count - 1]).to eq("Zurich")
    end
  end


end