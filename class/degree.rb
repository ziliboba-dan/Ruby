require_relative 'input'
require_relative 'check'

class Degree
  attr_accessor :value, :scale, :scale_transform
  
  def convert
    input = Input.new()
    @value = input.value()
    @scale = input.scale()
    @scale_transform = input.scale_transform()
    calc = Check.new(@value, @scale, @scale_transform)
    calc.check()
  end
end

temp = Degree.new()
temp.convert
