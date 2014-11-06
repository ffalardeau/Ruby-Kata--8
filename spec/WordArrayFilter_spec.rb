require 'spec_helper'

describe WordArrayFilter do
  let(:word_list) {["hello", "crazy", "Adonis", "Bye", "advise"]}

  context 'when we have a list containing 2 six character words' do
    it 'should return 2 words when specifying 6 as the number of characters' do
      expect(subject.get_words_with_x_letter(6, word_list).count).to eq(2)
    end

    it 'should return 0 words when specifying 8 as the number of characters' do
      expect(subject.get_words_with_x_letter(8, word_list).count).to eq(0)
    end
  end

  context 'when filtering words with less than X number of characters' do
    context 'when looking for words with less than 5 characters' do
      it 'should return 1 words' do
        expect(subject.get_words_with_less_than_x_letter(5, word_list).count).to eq(1)
      end
    end

    context 'when looking for words with less than 2 characters' do
      it 'should return 0 words' do
        expect(subject.get_words_with_less_than_x_letter(2, word_list).count).to eq(0)
      end
    end

    context 'when looking for words with less the 6 characters' do
      it 'should return 3 words' do
        expect(subject.get_words_with_less_than_x_letter(6, word_list).count).to eq(3)
      end
    end
  end

  context 'when filtering words by the first letter' do
    context 'with an empty list' do
      let(:word_list) {[]}

      it "should return 0 words that starts with 'a'" do
        expect(subject.get_words_that_starts_with_letter('a', word_list).count).to eq(0)
      end
    end

    context 'with the following list' do
      let(:word_list) {["hello", "crazy", "Adonis", "Bye", "advise"]}

      it "should return 2 words that starts with 'a'" do
        expect(subject.get_words_that_starts_with_letter('a', word_list).count).to eq(2)
      end

      it "should return 1 word that starts with 'h'" do
        expect(subject.get_words_that_starts_with_letter('h', word_list).count).to eq(1)
      end

      it "should return 1 word that starts with 'b'" do
        expect(subject.get_words_that_starts_with_letter('b', word_list).count).to eq(1)
      end
    end
  end
end

