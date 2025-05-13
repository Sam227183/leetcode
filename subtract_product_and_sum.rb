# https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

#Shorter version
def subtract_product_and_sum(n)
  arr = n.to_s.split('').map(&:to_i)
  return arr.inject(:*) - arr.sum
end

#In this case, you are using above function only once.
#Therefore, no need to store in variables.

#Original version
def subtract_product_and_sum(n)
  arr = n.to_s.split('').map(&:to_i)
  arr_product = arr.inject(:*)
  arr_sum = arr.sum
  return arr_product - arr_sum  
end

# Test Driven Development
puts subtract_product_and_sum(234)
puts subtract_product_and_sum(4421)