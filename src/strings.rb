s = "abcdefg"
puts s[0]
puts s[0,1]
puts s[1,2]
puts s[/b.*f/]
puts s[0..3]
puts s[0...3]
puts s[0..-2]                   # knock off last char
puts s[-4..-1]

puts
s[0] = ?x                       # or "x"
puts s
s[/b.*f/] = "z"
puts s
