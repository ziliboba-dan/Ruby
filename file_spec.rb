require 'rspec'
require_relative 'class/file.rb'

RSpec.describe Doc do
  describe 'calculation' do
    subject(:doc) { Doc.new(array) }
    context 'maximum' do
      let(:array) { [123, 21, 234, 999, 444, 777, 967] }
      it 'should be 999' do
        expect(doc.maximum).to eq 999
      end
    end
    context '#minimum' do
      subject { doc.minimum }
      let(:array) { [123, 21, 234, 999, 444, 777, 967] }
      it { is_expected.to eq 21 }
    end
    context 'average' do
      let(:array) { [5, 3, 1, 1] }
      it 'should be 2.5' do
        expect(doc.average).to eq 2.5
      end
    end
    context 'disp' do
      let(:array)  { [1, 2, 3, 4, 5] }
      it 'should be 2.5' do
        expect(doc.disp).to eq 2.5
      end
    end
  end
end
