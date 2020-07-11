def word_sizes(str)
  str.split.map{ |x| x.gsub!(/\W/,''); x.size}.group_by{|x| x}.reduce({}) { |h,(k,v)| h[k] = v.size; h}.sort
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }.sort
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }.sort
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }.sort
p word_sizes('') == {}.sort