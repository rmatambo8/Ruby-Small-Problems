def greetings(name, hsh)
  "Hello, #{name.join(' ')}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) ==  "Hello, John Q Doe! Nice to have a Master Plumber around."