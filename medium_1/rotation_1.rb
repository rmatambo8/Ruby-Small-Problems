=begin
Prompt: Write a method that rotates an array by moving the
 first element to the end of the array. 
 The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! 
for your implementation.
-input : an arr ( str or int)
-output : a new arr with first element at end

Examples: 
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

Rules
 - do not mutate original
 - first ele must be at the end
 - input will alway be an arr
 - will not be empty
 - single element ( return element if size is 1)
APPROACH
- write all of elements on a new piece of paper
- take the first element and move it to the end
- move all elements one to the left
 ALG
 - return array if array size is one
 - init a new_arr
 - push the second to end elements of the orig_arr into new_arr
 - push the first element into the arr
=end

def rotate_array(arr)
  new_arr = []
  new_arr << arr[1,arr.length]
  new_arr << arr[0]
  new_arr.flatten
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]  

#their solution - makes me feel dumb.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

#further Exploration

def rotate_string(str)
  rotate_array(str.chars).join('')
end

p rotate_string("Hello World")