# https://leetcode.com/problems/contains-duplicate/

def contains_duplicate(nums)
  n = 0
  
  while nums[n] < nums.length
    if nums.count(nums[n]) >= 2
      return true
    else
      n += 1
    end
  end
  return false
end

# Using hash

def contains_duplicate(nums)
  hash = {}

  nums.each_with_index do |n, i|
    if hash.has_key?(n)
      return true
    else
      hash[n] = i
    end
  end
  return false
end

# Test driven development
puts contains_duplicate([1,2,3,1])
puts contains_duplicate([1,2,3,4])
puts contains_duplicate([1,1,1,3,3,4,3,2,4,2])