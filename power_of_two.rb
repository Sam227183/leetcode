# https://leetcode.com/problems/power-of-two/description/



def is_power_of_two(n)
  if n.abs == 1 || n.abs == 2
    return true
  end
end

looping_var = n
  
while looping_var > 2
  if looping_var % 2 != 0
    return false
  end
  looping_var = looping_var / 2
end
  return true


# Test Driven Development
puts is_power_of_two(1) == true
puts is_power_of_two(16) == true
puts is_power_of_two(3) == false
puts is_power_of_two(20) == false
puts is_power_of_two(128) == true