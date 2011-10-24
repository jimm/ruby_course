#!/usr/bin/env ruby

class Foo

  # class instance variable
  @cvar = "class var"

  # instance variable
  attr_accessor :cvar

  def self.cv1
    @cvar
  end

  def self.cv2
    self.cvar
  rescue => ex
    "cv2: #{ex}"
  end

  def initialize
    @cvar = "instance var"
  end

  def cv1
    self.class.cv1
  end
end

puts Foo.cv1
puts Foo.cv2

f = Foo.new
puts f.cv1
puts f.cvar
