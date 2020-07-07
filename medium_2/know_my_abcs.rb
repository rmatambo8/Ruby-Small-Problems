ARRAY = [['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'],
['G','T'], ['R','E'], ['F','S'], ['J','W'], ['H','U'],
['V','I'] ,['L','Y'],["Z","M"]]

def block_word?(string)
  match_word = string.upcase.chars
  arr = ARRAY
  arr.each_with_index do |first_layer, index|
    first_layer.each do |second_layer, idx|
      return false if match_word.include?(arr[index][0]) && match_word.include?(arr[index][1])
    end
  end
  true
end

p block_word?("Ba") == true

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
