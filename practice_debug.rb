def prompt(message)
  puts ">> #{message}"
end

def verify_input?(str)
  (str.to_i > 0) || str == 's' || str = 'p'
end

def add_num(num)
  arr = (1..(num)).to_a
  counter = 1
  sum = 0
  loop do
    break if counter == arr.size

    sum = sum + arr[counter]

    counter += 1
  end
  sum
end

def multiply_num(num)
  arr = (1..num).to_a
  counter = 0
  product = 0
  loop do
    break if counter == arr.size

    product = product * arr[counter]

    counter += 1
  end

  product
end

prompt("Please enter an integer greater than 0:")
input = ''

loop do
  input = gets.chomp.to_i
  break if verify_input?(input)
  prompt("Please enter an INTEGER greater than 0: ")
end

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
decision = ''

loop do
  decision = gets.chomp
  break if verify_input?(decision)
  prompt("Please enter 's' or 'p'")
end

  case decision
when 's'
  prompt("The sum of the integers between 1 and #{input} is #{add_num(input)}")
when 'p'
  prompt("The product of the integers between 1 and #{input} is #{multiply_num(input)}.")
end

