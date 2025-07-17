# https://leetcode.com/problems/license-key-formatting/

def license_key_formatting(s,k)
  #step 1: edge case
  return s.upcase if s.length < 2

  #step 2: remove "-" and reverse the string
  s.gsub!("-", "").reverse!
  
  #step 3: set up for grouping. use modulus to create groups of k size. if str length is reached, and there is a remaining part, add that as well
  len = s.length
  final_arr = []
  checker = 1
  buffer = ''

  while checker <= len
    if checker % k == 0 || checker == len
      buffer += s[checker-1]
      final_arr << buffer
      buffer = ''
    else
      buffer += s[checker-1]
    end
    checker += 1
  end
  #step 4 Now we got the groups but in reversed order. So, we join with "-" and the reverse and then upcase
  return final_arr.join("-").reverse.upcase
end

# Test Driven Development
# puts license_key_formatting("5F3Z-2e-9-w", 4)
# puts license_key_formatting("2-5g-3-J", 2)

# 2nd try

def license_key_formatting(s,k)
  s = s.upcase.reverse.gsub("-","")

  output = []
  checker = 0
  buffer = []

  while checker < s.length
    if buffer.length < k
      buffer << s[checker]
      checker += 1
     if buffer.length == k
       output << buffer
       buffer = []
     end
    end
  end
  output << buffer if buffer.length != 0 
  return output.map{|arr| arr.join}.join("-").reverse  
end

# Test Driven Development
puts license_key_formatting("5F3Z-2e-9-w", 4)
puts license_key_formatting("2-5g-3-J", 2)

# 3rd version. Refactored by Saurav **Single Responsibility**

def license_key_formatting(s, k)
  return format(s,k)
end

def morph(input)
  input.upcase.reverse.gsub("-","")
end

def create_chunks(s,k)
  output = []
  checker = 0
  buffer = []

  while checker < s.length
    if buffer.length < k 
      buffer << s[checker]
      checker += 1
     if buffer.length == k
       output << buffer
       buffer = []
     end
    end
  end
  output << buffer if buffer != nil
  return output
end

def format(s,k)
  return create_chunks(morph(s),k).map{|arr| arr.join}.join("-").reverse
end

# Test Driven Development
# puts license_key_formatting("5F3Z-2e-9-w", 4)
# puts license_key_formatting("2-5g-3-J", 2)
# puts morph("5F3Z-2e-9-w") == "W9E2Z3F5"
# puts create_chunks("W9E2Z3F5", 4) == [["W", "9", "E", "2"], ["Z", "3", "F", "5"]]
# puts create_chunks("W9E2Z3F5", 4).to_s
# puts format("5F3Z-2e-9-w", 4) == "5F3Z-2E9W"
# puts format("2-5g-3-J", 2) == "2-5G-3J"