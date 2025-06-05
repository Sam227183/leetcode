# https://leetcode.com/problems/is-subsequence/

# Both solutions are wrong. You want to use "Two Pointers".
# Below is ChatGPT's solution.

def is_subsequence(s, t)
  i = 0
  j = 0

  while i < s.length && j < t.length
    i += 1 if s[i] == t[j]
    j += 1
  end

  i == s.length
end

# Solution 1. using .each do loop
def is_subsequence(s, t)
  arr = extract_match(s, t)
  arr.include?(s) ? true : false
end
  
def extract_match(s, t)
  arr = []
  t.split('').each do |e|
    if s.include? e 
      arr << e
    end
  end
  return arr.join    
end

# Solution 2. using while loop

def is_subsequence(s, t)
  arr = extract_match(s, t)
  #  Step 6:  Now, if the string of matches has the smaller string s, then return true
  arr.include?(s) ? true : false
end
  
def extract_match(s, t)
  # Step 1: Initialize a buffer array
  arr = []

  #  Step 2: Iterate through the string t
  looping_var = 0
  while looping_var < t.length
    #  Step 3: Compare and see if the element in t exists in s
    if s.include? t[looping_var] 
      #  Step 4: If yes, then add to buffer array
      arr <<  t[looping_var]
    end
    looping_var +=1 
  end

  #  Step 5: Finally, return the full buffer array of matches as a string
  return arr.join
end

# Test Driven Development
# puts is_subsequence("abc", "ahbgdc")
# puts is_subsequence("axc", "ahbgdc")
# puts is_subsequence("aec", "abcde")
# puts is_subsequence("aaa", "abacada")
# puts is_subsequence("abc", "acb")