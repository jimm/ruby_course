# blocks (closures) capture external context
x = 5
3.times { |i| x ||= 0 ; x += i } # 0, 1, 2
puts x

class Foo
  def print_self_in_block
    yield
  end
end

# "self" in block is what it was when the block was defined
f = Foo.new
puts f.class.name
# self is out here (unnamed)
f.print_self_in_block { puts self.class.name }
