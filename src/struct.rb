Person = Struct.new(:name, :age, :shoe_size)
p = Person.new("Fred", 50, 9.5)
puts "#{p.name} is #{p.age} years old and wears size #{p.shoe_size} shoes"
p = Person.new("Ralph")         # args are optional
p.age = 12
puts p.inspect
