
def interpret(command)
  return command.gsub("()","o").gsub("(al)","al")
end

# Test Driven Development
puts interpret("G()(al)")
puts interpret("G()()()()(al)")
puts interpret("(al)G(al)()()G") 