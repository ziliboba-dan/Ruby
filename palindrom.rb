require 'rubygems'
require "active_support/all"

class Word
  attr_accessor :word, :bool
  
  def initialize(word)
      @word = word
  end
   
  def palidrom?
    @word.encode!("utf-8")
    @word.mb_chars.upcase.to_s == @word.mb_chars.upcase.to_s.reverse
  end
end


puts "Input Word"
word = gets.chomp
pal = Word.new(word)
if pal.palidrom? == true
  puts "Palindrom[ok]"
else
  puts "Palindrom[x]"
end
