x = 1
begin
  raise "Ouch"
rescue => ex
  if x == 1
    $stderr.puts "Tried once and failed; trying again"
    x += 1
    retry
  end
  $stderr.puts ex.to_s
ensure
  puts "Is that all you've got?"
end
