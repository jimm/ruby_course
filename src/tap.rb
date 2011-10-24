# tap lets you do stuff while returning original value (the new object, in
# this example)
Person = Struct.new(:name, :age)

x = Person.new("jim").tap { |obj|
  puts "initializing an object" # side effects
  obj.age = 112                 # further initialization
}
puts x
