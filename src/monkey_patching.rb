class String
  def camelize
    capitalize.gsub(/_([a-z])/) { $1.upcase }
  end
end

puts "this_is_a_silly_example".camelize

class String
  def upcase
    downcase
  end
end

puts "this_is_a_silly_example".camelize
