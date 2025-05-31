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

#Test Driven Development
puts license_key_formatting("5F3Z-2e-9-w", 4)
puts license_key_formatting("2-5g-3-J", 2)