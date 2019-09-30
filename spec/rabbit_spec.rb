require 'rspec'
require_relative 'rabbit.rb'

RSpec.describe Fib do
  
  subject(:fib) { Fib.new }
  context 'right' do
    it 'should be 12 months = 377 ' do
      expect(fib.fibonacci(12)).to be 144
    end
    it 'should be 0 months = 1 ' do
      expect(fib.fibonacci(0)).to eq 0
    end
  end
  context 'error' do
    it 'should be  months < 0 = error ' do
      expect(fib.fibonacci(-2)).to eq 'error_months'
    end
  end
end
