require 'rspec'
require_relative 'palindrom.rb'

RSpec.describe Word do
  describe '#palidrom?' do
    subject { Word.new(word) } 
    context 'the word is a palindorm' do
      let(:word) { 'Topot' }
      it { is_expected.to be_palidrom }
    end
    context 'the word is not a palindorm' do
      let(:word) { 'Tipot' }
      it { is_expected.not_to be_palidrom }
    end
  end
end
