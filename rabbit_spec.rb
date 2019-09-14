require 'rspec'
require_relative 'rabbit.rb'

RSpec.describe Fib do

    it 'should be 12 months = 377 ' do
        fib = Fib.new()
        expect(fib.fibonacci(12 + 1)).to be 377
    end

    it 'should be 0 months = 1 ' do
        fib = Fib.new()
        expect(fib.fibonacci(0 + 1)).to eq 1
    end
    it 'should be  months < 0 = error ' do
        fib = Fib.new()
        expect(fib.fibonacci(-2 + 1)).to eq 'error_months'
    end
end