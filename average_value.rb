# https://leetcode.com/problems/average-value-of-even-numbers-that-are-divisible-by-three/description/?difficulty=EASY&page=1&sorting=W3t9XQ%3D%3D

def average_value(nums)
  # gathering the value of 'return of a function' and store in a variable.
  final_arr = even_and_three(nums)
  # guard conditions
  return 0 if final_arr.size == 0
  return final_arr.sum / final_arr.size.to_i
end

# check if array elemets are even and divisible by 3
def even_and_three(nums)
 # Initialize an array. Currently it is empty.
  select_arr = []
  nums.each do |element|
    # puts "current element is #{element}"
    if element % 2 == 0 && element % 3 == 0
      # puts "chosen element is #{element}"
      select_arr << element
    end
  end
  return select_arr
end

#using select method
# return nums.select{|element| element % 6 == 0}

# Test driven development
# puts even_and_three([1,3,6,10,12,15])
puts average_value([1,3,6,10,12,15])
# even_and_three([1,2,4,7,10])
puts average_value([1,2,4,7,10])