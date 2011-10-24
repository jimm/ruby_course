def foo
  raise "bletch"
rescue => ex
  puts "rescue: #{ex}"
end
