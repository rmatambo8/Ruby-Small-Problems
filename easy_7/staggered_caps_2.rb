=begin
prompt: Modify the method from the previous exercise so it ignores
non-alphabetic characters when determining whether it should uppercase
or lowercase each letter. The non-alphabetic characters should still be 
included in the return value; they just don't count when toggling the desired case.

rules 
-input: str
- output: str
- ignores non alfa chars 
- non alpha should still be in the return value.
- dont count when toggling the wanted case.


  ALG

  - main prob: creating a way to push the non alpha chars.

  - init a second arr that will have all alpha chars from str.
  - in the second arr use the index value to follow the prior method.
  - mutate the object of the selected collection. return the original array.
=end

def staggered_case(string)
  string = string.chars
  alpha = [('a'..'z').to_a, ('A'..'Z').to_a]
  arr = string.select { |x| alpha.flatten.include?(x)}
  arr.each_with_index do |x, idx|
    x.upcase! if idx.even?
    x.downcase! if idx.odd?
  end
 
  string.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'