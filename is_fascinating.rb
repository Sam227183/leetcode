# https://leetcode.com/problems/check-if-the-number-is-fascinating/description/

def is_fascinating(n)
  con_arr = n.to_s + (2*n).to_s + (3*n).to_s
  # Now we have a sting of '1~9'.
  # Let's check if it has all numbers of 1~9, exactly once.
  sorted_arr = con_arr.split('').sort.join
  return sorted_arr == '123456789' ? true : false
end

# Test Driven Development
puts is_fascinating(192)
puts is_fascinating(100)
