class Check
  attr_accessor :value, :scale, :scale_transform
  
  def initialize(value, scale, scale_transform)
    @value = value
    @scale = scale
    @scale_transform = scale_transform
  end
 
  def transform_C_to_K
    new_value = @value.to_f + 273.15
  end

  def transform_C_to_F
    new_value = 1.8 * @value.to_f + 32
  end

  def transform_K_to_C
    new_value = @value.to_f - 273.15
  end

  def transform_K_to_F
    new_value = 1.8 * (@value.to_f - 273.15) + 32
  end

  def transform_F_to_C
    new_value = (@value.to_f - 32) / 1.8
  end

  def transform_F_to_K
    new_value = (5 * (@value.to_f - 32) / 9) + 273.15
  end

  def check()
    if (@scale == 'C' and @scale_transform == 'K') 
      print 'New value = ' + transform_C_to_K.round(2).to_s
    elsif (@scale == 'C' and @scale_transform == 'F') 
      print 'New value = ' + transform_C_to_F.round(2).to_s
    elsif (@scale == 'K' and @scale_transform == 'C') 
      print 'New value = ' + transform_K_to_C.round(2).to_s
    elsif (@scale == 'K' and @scale_transform == 'F') 
      print 'New value = ' + transform_K_to_F.round(2).to_s
    elsif (@scale == 'F' and @scale_transform == 'C') 
      print 'New value = ' + transform_F_to_C.round(2).to_s
    elsif (@scale == 'F' and @scale_transform == 'K') 
      print 'New value = ' + transform_F_to_K.round(2).to_s
    else 
      puts 'Iput right scale(F,C,K) or right transform scale(F,C,K)'
      false
    end
  end
end
