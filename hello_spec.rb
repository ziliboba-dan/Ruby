require 'rspec'
require_relative 'Hello.rb'

RSpec.describe Hello do

    it 'should Hello World' do
        hel = Hello.new()
        expect(hel.hello_wrold()).to eq 'Hello World'
    end
end
