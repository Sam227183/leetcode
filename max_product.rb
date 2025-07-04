# https://leetcode.com/problems/maximum-product-of-two-digits/description/

def max_product(n)
  arr = n.to_s.split('').map(&:to_i).max(2)
  return arr[0]*arr[1]
end

# Test Driven Development
puts max_product(31)
puts max_product(22)
puts max_product(124)

# 2nd try

def max_product(n)
  selected = n.digits.max(2)
  return selected.inject(:*)
end

# Test Driven Development
puts max_product(31)
puts max_product(22)
puts max_product(124)