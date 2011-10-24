%w(rubygems thin active_record).each { |word| require word }

a = %w(word word2 with\ space x\ty)
puts a.inspect

a = %W(#{Time.now} hi\tthere)
puts a.inspect

s = %{string literal #{3+4}}
puts s
