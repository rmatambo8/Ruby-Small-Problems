def fizzbuzz(a, b)
  arr = (a..b).to_a
  results = arr.map do |num|
    if num % 3 == 0 && num % 5 == 0
      'fizzBuzz'
    elsif num % 5 == 0
      'Buzz'
    elsif num % 3 == 0 
      'Fizz'
    else
      num
    end
  end
  puts results.join(', ')
end

fizzbuzz(1,15)