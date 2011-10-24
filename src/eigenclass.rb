animal = "dog"

def animal.speak
  puts "Bark, dammit, bark!"
end
animal.speak

# new notation: "class << an_object"
a = class << animal
      def speak
        puts "The #{self} says woof!"
      end
      self
    end
puts a
puts a.class

# animal.speak

# puts animal.class
# puts animal.class.class
# puts animal.class.class.class

