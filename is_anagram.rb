# https://leetcode.com/problems/valid-anagram/description/

def is_anagram(s, t)
  s.split('').sort == t.split('').sort     
end

# Test Driven Development
puts is_anagram('anagram', 'nagaram')
puts is_anagram('rat', 'car')
