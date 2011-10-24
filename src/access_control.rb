#!/usr/bin/env ruby

class Foo

  def foo; 1 ; end
  private :foo

  private

  def bar; 2 ; end
end
