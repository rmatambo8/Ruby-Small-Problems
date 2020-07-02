def short_long_short(str, str2)
  str.length < str2.length ? "#{str}#{str2}#{str}" : "#{str2}#{str}#{str2}"
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"