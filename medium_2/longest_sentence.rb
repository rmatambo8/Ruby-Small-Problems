=begin
prompt - Write a program that reads the content of a text file
and then prints the longest sentence in the file based on number of words. 
Sentences may end with periods (.), exclamation points (!), or question marks (?). 
Any sequence of characters that are not spaces or sentence-ending characters
should be treated as a word. You should also print the number of words in the longest sentence.

Rules 
- sentences can end with periods
- sentences can end with exclamation points
- sentences can end with question marks
- i am to separate all sentences
- is not a sentence if it includes two of the three punctuation markers.
- -- counts as a word

Approach
- i splitting each sentence up and placing the sentences in an arr
- i can check the word count of each element
- return the sentence with most words.
  - iterate through and find the index

ALG 
  - iterate through the string and split based on if it is a sentence or not
    - create a method that checks if a line is a sentence
    - keep splitting until it is a sentence and then push it into arr.
      - looping structure here - keep splitting until false.
      - 
    - create a method that will mutate my arr of sentences( add a sentence)
  - check the word count of each sentence 
    - iterate through sentences and separate them into words
    - save a running max that has the word count
    - change max number to new number if length is greater than current.
  - return max number
=end

def is_not_a_sentence?(str)
  str.include?('?')&&str.include?('!') || 
  str.include?('?')&&str.include?('.') ||
  str.include?('!')&&str.include?('!')
end
str = File.read('sample_text.txt')

def longest_sentence(str)
  results = 0
  sentences = str.split('?').map { |x| x.split('.')}.map{|y| y.map { |z| z.split('!')}}
  sentences.flatten!
  sentences.each do |sentence| 
    length = sentence.split.size
    results = length if length > results
  end

  p results
end

longest_sentence(str)
