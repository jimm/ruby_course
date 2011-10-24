def foo(*args)
  puts args.join("|")
end

foo(1, 2, 3, "paper")

def bar(a)
  x, y, z = *a
  puts "x = #{x}, y = #{y}, z = #{z}"
  x, y, z = a
  puts "x = #{x}, y = #{y}, z = #{z}"
end

bar([1, 2, 3, "paper"])
