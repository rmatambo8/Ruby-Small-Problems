# Prompt: 

# code needed

=begin
The String#to_i method converts a string of numeric characters 
(including an optional plus or minus sign) to an Integer. String#to_i and the 
Integer constructor (Integer()) behave similarly. In this exercise, 
you will create a method that does the same thing.
Write a method that takes a String of digits, and returns the appropriate 
number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, 
nor should you worry about invalid characters; 
assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby, 
such as String#to_i, Integer(), etc. 
Your method should do this the old-fashioned way and 
calculate the result by analyzing the characters in the string.

Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570

P (understand the Problem)
1. Create a method that converts a string of digits to numbers
2. Output the appropriate numbers as digits.
3. Do not worry about the edge cases
4. Cannot use any of the standard Ruby conversion methods
5. Has to be done through character analysis


rules
  - cannot use ruby conversion methods
  - can only analyze each character
  - output should be an integer value.
  
D (Data structures):
   -Input: str
	 -Output: integer

Approach: 
  - create a method that will take a string and iterate through its characters
  - create a bank of integers.
  - create a bank of string integers
  - iterate until there is a match and take the index value there.
  - each character has to be checked against a bank of integers
  - if it includes a specific value, that value is added to an array
  - the final values of the array will be pushed into a new method
  - create a method that will put 4 digits in their place values and sum them up
=end



def string_to_integer(str)
  int_bank = (0..9).to_a
  str_bank = ("0".."9").to_a
  arr = []
  counter = 0 
  loop do
    break if counter == str.size

    str_bank.each_with_index{|x,y| arr << y if str[counter] == x}

    counter += 1
  end

  array_to_sum(arr)
end

def array_to_sum(input)
  arr_sum = []
  input.each_with_index{|x,y| arr_sum << x*10**(input.size - (y+1))}

  arr_sum.sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570