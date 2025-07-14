# https://leetcode.com/problems/valid-anagram/description/

def is_anagram(s, t)
  s.split('').sort == t.split('').sort     
end

# Test Driven Development
puts is_anagram('anagram', 'nagaram')
puts is_anagram('rat', 'car')

# 2nd try

def is_anagram(s, t)
  if t.split('').sort.join == s.split('').sort.join
    return true
  else 
    return false
  end
end

# Test Driven Development
puts is_anagram('anagram', 'nagaram')
puts is_anagram('rat', 'car')