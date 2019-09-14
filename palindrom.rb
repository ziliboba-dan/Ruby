require 'rubygems'
require "active_support/all"

class Palindrom
    attr_accessor :word, :bool

    def input_word
        puts "Input Word"
        @word = gets.chomp
    end

    def check
        @word.encode!("utf-8")
        if @word.mb_chars.upcase.to_s == @word.mb_chars.upcase.to_s.reverse
            # puts "Palindrom[ok]"
            bool = true
        else
            # puts "Palindrom[x]"
            bool = false
        end
    end
end

pal = Palindrom.new
pal.input_word
if pal.check == true
    puts "Palindrom[ok]"
else
    puts "Palindrom[x]"
end
