require 'rspec'
require_relative 'palindrom.rb'

RSpec.describe Palindrom do

    it 'should be Топот is palindrom' do
        pal = Palindrom.new()
        pal.word = "Топот"
        expect(pal.check).to be true
    end

    it 'should be Tipot is not palindrom' do
        pal = Palindrom.new()
        pal.word = "Tipot"
        expect(pal.check).to be false
    end
    it 'should be Topot is  palindrom' do
        pal = Palindrom.new()
        pal.word = "Topot"
        expect(pal.check).to be true
    end
end
