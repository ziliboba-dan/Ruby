class Fib

def fibonacci(n)
  if (n) < 0
    return 'error_months'
  end
  return n if n <= 1
  (fibonacci(n - 1).to_i + fibonacci(n - 2).to_i)
end

end

fib = Fib.new()
puts 'Input months'
months = gets.chomp

puts fib.fibonacci(months.to_i)
