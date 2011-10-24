a = [1, 2, "foo"].collect { |thing| thing.class }
puts a.join("\n")
puts
a = [1, 2, "foo"].map(&:succ)  # could use collect
puts a.join("\n")
