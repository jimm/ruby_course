class Dog
  def bark; puts "Woof"; end
end

class Tree
  def bark; puts "If I fall in the forest will you hear me?"; end
end

def foo(thing)
  thing.bark if thing.respond_to?(:bark)
end

foo(Dog.new)
foo("a string")
foo(Tree.new)
