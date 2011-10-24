class Foo
  def foo(x); puts "foo#{x}" ; end
  alias_method :old_foo, :foo
  def foo(x); puts "hi"; old_foo(x); end
end
Foo.new.foo(42)
