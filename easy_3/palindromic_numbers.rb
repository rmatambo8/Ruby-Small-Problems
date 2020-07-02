def real_palindrome?(str)
  str = str.downcase.delete('^a-z0-9')
  str == str.reverse
end
def palindromic_number?(numbers)
  real_palindrome?(numbers.to_s)
end


p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true