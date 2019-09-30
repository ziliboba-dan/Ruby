require 'csv'
require 'colorize'

class Doc
  attr_accessor :file, :temp, :year
  
  def initialize(file)
    @file = file
  end
  def read
    @file1 = CSV.read("demo11.csv")
    @file = []
    @year = []
    @file1.each_index do
        |i| @file << @file1[i][1].to_f
            @year << @file1[i][0].to_i
    end
  end

  def show
    print @file
  end

  def maximum
     @file.max
  end

  def minimum
    @file.min
  end

  def average
    @file.inject {|sum, el| sum + el} / @file.size.to_f
  end

  def disp
    sum = @file.inject {|x,n| x+n }
    # puts "Sum=" + sum.to_s
    average = sum / @file.size 
    # puts average  

    file_minus = []
    @file.each_index do
        |i| file_minus << ((@file[i] - average)**2)
    end
    # print file_minus         
    file_minus_summa = file_minus.inject {|x,n| x+n }
    # puts file_minus_summa.round(4)
    dispersia = file_minus_summa.to_f / (@file.size - 1) 
  end

end

doc = Doc.new('')
doc.read
# doc.show
puts "\nFile open".light_white.on_red
puts "Шо будем делать с населением?".light_white.on_red
puts "
1. Максимум
2. Минимум
3. Среденее значение
4. Исправленную выборочную дисперсию".light_white.on_green
temp = gets.chomp

if temp == "1"
puts doc.maximum
elsif temp == "2"
puts doc.minimum
elsif temp == "3"
puts doc.average.round(2)
elsif temp == "4"
puts doc.disp
end
