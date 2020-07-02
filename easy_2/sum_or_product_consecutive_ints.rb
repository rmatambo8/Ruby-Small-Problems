def prompt(message)
  puts ">> #{message}"
end

def add_num(num)
  arr = (1..(num.to_i)).to_a
  counter = 0
  sum = 0
  loop do
    break if counter == arr.size

    sum = sum + arr[counter]

    counter += 1
  end
  sum
end

def multiply_num(num)
  arr = (1..(num.to_i)).to_a
  counter = 0
  product = 1
  loop do
    break if counter == arr.size

    product = product * arr[counter]

    counter += 1
  end

  product
end

prompt("Please enter an integer greater than 0:")
input = gets.chomp.to_i
prompt("Enter 's' to compute the sum, 'p' to compute the product.")
decision = gets.chomp

case decision
when 's'
  prompt("The sum of the integers between 1 and #{input} is #{add_num(input)}")
when 'p'
  prompt("The product of the integers between 1 and #{input} is #{multiply_num(input)}.")
end


