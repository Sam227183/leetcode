# https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

# Below answer is not correct. 
def find_numbers(nums)
  # Generate an array
  
  if array_member.to_s.length == 2||4||6
    return array_member
  end

end

# Test Driven Development
puts find_numbers([12,345,2,6,7896])
puts find_numbers([555,901,482,1771])

# 2nd try. 
def find_numbers(nums)
  checker = 0
  counter = 0

  while checker < nums.length
    if nums[checker].to_s.length % 2 == 0
      counter += 1
      checker += 1
    else
      checker += 1
    end
  end
  return counter
end

# Test Driven Development
puts find_numbers([12,345,2,6,7896])
puts find_numbers([555,901,482,1771])