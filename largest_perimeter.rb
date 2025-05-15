# https://leetcode.com/problems/largest-perimeter-triangle/

def largest_perimeter(nums)
 if triangle_condition(nums) == true
    return nums.sum 
  else
    return 0
  end
end

def triangle_condition(nums)
  #1. array length check 
  if nums.length >= 4
   arr = nums.max(3)
  else 
   arr = nums
  end
  #2. triangle condition check
  if (arr[0] + arr[1] > arr[2]) && 
    (arr[0] + arr[2] > arr[1]) && 
    (arr[1] + arr[2] > arr[0])
    return true
  else
    false
  end   
end

# Test Driven Development
# puts triangle_condition([2,1,2])
# puts triangle_condition([1,2,1,10])
puts largest_perimeter([2,1,2])
puts largest_perimeter([1,2,1,10])