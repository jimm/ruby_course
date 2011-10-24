# see Object#===, Module#===, and Regexp#===
x = "foobar"
str = case x
      when File, 42, /not-a-match/
        "I am a #{x.class}"
      when /foo(.*)/
        $1
      end

puts str
