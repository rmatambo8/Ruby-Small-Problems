# Write a method that takes a String as an argument, and returns a new String that contains
# the original value using a staggered capitalization scheme in which every other character
# is capitalized, and the remaining characters are lowercase. Characters that are not letters
# should not be changed, but count as characters when switching between upper and lowercase.
=begin
rules :
- string as argument
- output new sting with staggered cap scheme.
- numbers are ignored
- staggered letters are lower case/ upcase. 
- characters that are not letters should not be changed but count as chars when switching
DT 
- arr that is ordered

Pseudocode 
- i want to iterate through the arr
- oscilate which characters are upper case and which are lower case

ALG
- init a new arr and assign it to the mapped chars all downcased.
- use the chars and map methods to create an arr of characters
- iterate through an array with index value to upcase evens and downcase odds
=end

def staggered_case(string)
  arr = []
  str = string.chars.map(&:downcase)
  str.each_with_index do |letter, idx|
    arr << letter.upcase if idx.even?
    arr << letter.downcase if idx.odd?
  end
  arr.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'