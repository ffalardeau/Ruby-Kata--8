require 'spec_helper'

describe WordArrayFilter do

  context 'when filtering words with an exact number of letters' do
    context 'and we have an empty list' do
      let(:word_list) {[]}

      it 'should always return 0 words' do
        expect(subject.get_words_with_x_letter(2, word_list).count).to eq(0)
        expect(subject.get_words_with_x_letter(10, word_list).count).to eq(0)
        expect(subject.get_words_with_x_letter(0, word_list).count).to eq(0)
      end
    end

    context 'and we have a list containing 2 six letter words' do
      let(:word_list) {["hello", "crazy", "Adonis", "Bye", "advise"]}

      it 'should return 2 words when specifying 6 as the number of letters' do
        expect(subject.get_words_with_x_letter(6, word_list).count).to eq(2)
      end

      it 'should return 0 words when specifying 8 as the number of letters' do
        expect(subject.get_words_with_x_letter(8, word_list).count).to eq(0)
      end

      it 'should return 0 words when specifying 0 as the number of letters' do
        expect(subject.get_words_with_x_letter(0, word_list).count).to eq(0)
      end
    end

    context 'and the list is not an array' do
      let(:word_list) {{}}

      it 'should always return 0 words' do
        expect(subject.get_words_with_x_letter(0, word_list).count).to eq(0)
      end
    end
  end

  context 'when filtering words with less than X number of letters' do
    let(:word_list) {["hello", "crazy", "Adonis", "Bye", "advise"]}

    context 'and looking for words with less than 5 letters' do
      it 'should return 1 words' do
        expect(subject.get_words_with_less_than_x_letter(5, word_list).count).to eq(1)
      end
    end

    context 'and looking for words with less than 2 letters' do
      it 'should return 0 words' do
        expect(subject.get_words_with_less_than_x_letter(2, word_list).count).to eq(0)
      end
    end

    context 'and looking for words with less the 6 letters' do
      it 'should return 3 words' do
        expect(subject.get_words_with_less_than_x_letter(6, word_list).count).to eq(3)
      end
    end

    context 'and looking for words with less the 0 letters' do
      it 'should return 0 words' do
        expect(subject.get_words_with_less_than_x_letter(0, word_list).count).to eq(0)
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

      it "should return 0 words that starts with '.'" do
        expect(subject.get_words_that_starts_with_letter('.', word_list).count).to eq(0)
      end
    end
  end
end

