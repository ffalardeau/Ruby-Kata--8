require 'spec_helper'

describe DictionaryReader do
  context 'when trying to get all words' do
    context 'and the dictionary is empty' do
      it 'should return 0 words' do
        subject.read(File.dirname(__FILE__)+"/support/empty_word_list.txt")
        expect(subject.get_all_words.count).to eq(0)
      end
    end

    context 'and the dictionary is not found' do
      it 'should return 0 words' do
        subject.read("")
        expect(subject.get_all_words.count).to eq(0)
      end
    end

    context 'and the dictionay is found and not empty' do
      before(:each) do
        subject.read(File.dirname(__FILE__)+"/support/2_word_list.txt")
      end

      it "should have the same number of words as it's source" do
        expect(subject.get_all_words.count).to eq(2)
      end

      it "should have the same first word as it's source" do
        expect(subject.get_all_words[0]).to eq("hello")
      end

      it "should have the same last word as it's source" do
        words = subject.get_all_words
        expect(words[words.count - 1]).to eq("you")
      end
    end
  end


end