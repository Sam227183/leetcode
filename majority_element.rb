# https://leetcode.com/problems/majority-element/

def majority_element(nums)
  nums.sort!
  return nums[nums.length/2]
end

# Test Driven Development
puts majority_element([3,2,3])
puts majority_element([2,2,1,1,1,2,2])
