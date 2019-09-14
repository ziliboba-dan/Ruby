require 'rspec'
require_relative 'file.rb'

RSpec.describe Doc do

    it 'should be 999' do
        doc = Doc.new()
        doc.file = [123, 21, 234, 999, 444, 777, 967]
        expect(doc.maximum).to eq 999
    end

    it 'should be 21' do
        doc = Doc.new()
        doc.file = [123, 21, 234, 999, 444, 777, 967]
        expect(doc.minimum).to eq 21
    end
    it 'should be -21' do
        doc = Doc.new()
        doc.file = [123, -21, 234, 999, 444, 777, 967]
        expect(doc.minimum).to eq -21
    end
    it 'should be 50' do
        doc = Doc.new()
        doc.file = [10, 20, 30, 40, 50, 60, 140]
        expect(doc.average).to eq 50
    end
    it 'should be 2.5' do
        doc = Doc.new()
        doc.file = [5, 3, 1, 1]
        expect(doc.average).to eq 2.5
    end
    it 'should be 2.5' do
        doc = Doc.new()
        doc.file = [1, 2, 3, 4, 5]
        expect(doc.disp).to eq 2.5
    end
end