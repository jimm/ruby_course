def foo(&block)
  block.call("hello")
  yield "world"
end

foo { |arg| puts arg }
