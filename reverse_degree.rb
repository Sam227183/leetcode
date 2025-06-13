# https://leetcode.com/problems/reverse-degree-of-a-string/?envType=problem-list-v2&envId=2jvmljid

#Solution 1. using hash

def create_hash
  #step 1. initialize hash
  hash = {}
  #step 2. add value
  ('a'..'z').to_a.reverse.each_with_index do |chr, index|
    hash[chr] = index + 1
  end
  return hash
end
#seperate hash: store it constant. So I don't have to create hash again.
ALPHA_HASH = create_hash

def reverse_degree(s)
  #step 1. initialize 
  sum = 0
  #step 2. loop through the input string
    s.split('').to_a.each_with_index do |chr, index|
      #step 3. go to hash, find the value of chr   
      #step 4. multiply index + 1 from input value
      #step 5. add it to the current sum
      sum += ALPHA_HASH[chr] * (index + 1)
    end
    return sum
end

# Solution 2. using ASCII value 
def reverse_degree(s)
  sum = 0
  s.split('').each_with_index do |chr, index|
   sum += index_in_reverse_alphabet(chr) * (index + 1)
  end
  
  return sum
end

def index_in_reverse_alphabet(chr)
  return ('z'.ord - chr.ord).abs + 1
end

# Test Driven Development
puts reverse_degree("abc")
puts reverse_degree("zaza")