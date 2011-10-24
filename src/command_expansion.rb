puts `ls #{"/tmp"}`                       # receives stdout; includes newline

puts
puts %x{echo "hello there"}          # same as backticks

puts
system("rm -rf /tmp/des_not_exist*") # no output

puts 'done'
