=begin

=end
def balanced?(str)
  string = str.chars
  balancer = 0
  string.each do |char|
    if char =~ /\(/
      balancer += 1
    elsif char =~ /\)/
      balancer -= 1
    else 
      char
    end
    return false if balancer < 0
  end
  balancer == 0 
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false