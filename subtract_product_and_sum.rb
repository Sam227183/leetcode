# https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

def subtract_product_and_sum(n)
  arr = n.to_s.split('').map(&:to_i)
  arr_product = arr.inject(:*)
  arr_sum = arr.sum
  return arr_product - arr_sum
end

# Test Driven Development
puts subtract_product_and_sum(234)
puts subtract_product_and_sum(4421)