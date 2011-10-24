puts(([1, "foo", 2, "foo"] - ["foo"]).join(", ")) # set difference
puts(([1, 2] + ["foo"]).join(", "))               # append
puts(([1, 2] & [4, 2, 3, 2]).join(", "))          # intersection
puts(([1, 2] | [4, 2, 3, 2]).join(", "))          # union
puts(([1, 2] + [4, 2, 3, 2]).join(", "))          # append
