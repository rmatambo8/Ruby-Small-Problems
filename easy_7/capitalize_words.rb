=begin
prompt : create a method that will take a string of words and return each word capitalized except quoted words

- input: str
- output: cap word str

examples 
- key problem will be dealing with quotes
=end

def word_cap(str)
  words_arr = str.split.map(&:capitalize)
  words_arr.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# without capitalize? probably have to map and manually change the first element.