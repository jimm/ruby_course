class Foo

  class << self
    def aaron
      "Hi I'm Aaron"
    end
  end

  def Foo.cm1
    "cm1: I am a #{name}"
  end

  # When reading this, self == the class
  def self.cm2
    "cm2: I am a #{name}"
  end

  # These are exactly like cm1 and cm2

  def Foo.cm3
    "cm3: I am a #{name}"
  end

  # When reading this, self == the class
  def self.cm4
    "cm4: I am a #{name}"
  end
end

class Bar < Foo

  # We override cm3 and cm4

  def Bar.cm3
    "cm3: I am a #{name}"
  end

  # When reading this, self == the class
  def self.cm4
    "cm4: I am a #{name}"
  end
end

puts Foo.cm1
puts Foo.cm2
puts Foo.cm3
puts Foo.cm4

puts Bar.cm1
puts Bar.cm2
puts Bar.cm3
puts Bar.cm4

puts Foo.aaron
