require 'ostruct'

p = OpenStruct.new
p.name = "Jim Menard"
p.age = 50
p.shoe_size = 9.5
puts p

p = OpenStruct.new(:name => "Jane Doe", :age => 99, :shoe_size => 1)
puts p
