class Foo

  @@class_var = "class var"
  @class_instance_var = "class instance var"

  def self.print_vals
    puts "I am a #{name}"
    puts "  @@class_var = #{@@class_var}"
    puts "  @class_instance_var = #{@class_instance_var}"
  end
end

class Bar < Foo

  def self.change_vals
    @@class_var = "new class var value"
    @class_instance_var = "new class instance var value"
  end

end

Foo.print_vals
Bar.print_vals

puts
Bar.change_vals
Foo.print_vals
Bar.print_vals
