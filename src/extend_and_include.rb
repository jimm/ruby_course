module Moddy
  def moddy_the_modder
    42
  end
end

class Foo
  extend Moddy                  # adds methods to class Foo
end

class Bar
  include Moddy                 # adds superclass (adds methods to instances)
end

puts Foo.moddy_the_modder
puts Bar.new.moddy_the_modder


x = "abcdef"
x.extend Moddy
puts x.moddy_the_modder
