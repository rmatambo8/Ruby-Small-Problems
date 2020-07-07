=begin
Problem
Lettercase Percentage Ratio
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.
aim = percentage of the total letters that are in each category
You may assume that the string will always contain at least one character.

Rules 
  - spaces not counted
  - all chars are counted

Examples
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

Data structures
input = str
output = hsh

Alg
 - init an arr of the chars without spaces
 - init a hash with symbols
 - iterate through arr pushing values into hash based on type
  - init a hash with the symbols and 0 value
  - increase the counter for each match.
 - return new hash of values over hash sum.
  - use sum method as denom
  - iterate through values to get numer

Code 

=end
def letter_percentages(str)
  string_arr = str.chars
  results = { lowercase: 0, uppercase: 0, neither: 0 }
  string_arr.each do |char|
    if char =~ /[a-z]/
      results[:lowercase] += 1
    elsif char =~ /[A-Z]/
      results[:uppercase] += 1
    else
      results[:neither] += 1
    end
  end
  denominator = results.values.sum
  results.each { | key, value| results[key] = ((value/denominator.to_f)*100).round(1) }
  results
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
