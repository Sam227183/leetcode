# https://leetcode.com/problems/truncate-sentence/?difficulty=EASY&page=1&sorting=W3t9XQ%3D%3D

def truncate_sentence(s, k)
  arr = s.split(" ")

  #loop
  output = []
  n = 0
  while n <= (k - 1)
    output << arr[n]
    n += 1
  end
  return output.join(' ')
end

# Test Driven Development
puts truncate_sentence("Hello how are you Contestant", 4) 
puts truncate_sentence("What is the solution to this problem", 4) 
puts truncate_sentence("chopper is not a tanuki", 5) 