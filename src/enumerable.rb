a = [1, 2, 3].collect { |i| i * 2 }
puts a.inspect

# ================

class NumberGenerator
  include Enumerable
  def initialize(max); @max = max; @n = 0 end
  def each
    while @n < @max
      yield @n
      @n += 1
    end
  end
  def reset; @n = 0; end
end

ng = NumberGenerator.new(10)
ng.each { |i| puts i }

# all other Enumerable methods are available
ng.reset
puts ng.select { |i| i.even? }.inspect

ng.reset
puts ng.max
