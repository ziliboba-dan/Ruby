class Input
  def value
    puts "Input Value"
    @value = gets.chomp
  end

  def scale
    puts "Input Scale"
    @scale = gets.chomp
  end

  def scale_transform
    puts "Input Transform Scale"
    @scale_transform = gets.chomp
  end

end
