class Foo
  def initialize
    @mine = 42
  end
end

x = Foo.new
begin
  puts x.mine.to_s
rescue => ex
  $stderr.puts ex.to_s
end
puts "x.instance_variables: #{x.instance_variables.join(", ")}"
puts "instance_variable_get: #{x.instance_variable_get("@mine")}" # name includes '@'
x.instance_variable_set(:@mine, 99)
puts "instance_variable_get: #{x.instance_variable_get("@mine")}" # name includes '@'
