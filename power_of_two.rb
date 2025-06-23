# https://leetcode.com/problems/power-of-two/description/

def is_power_of_two(n)
  if n.abs == 1 || n.abs == 2
    return true
  end

  looping_var = n
  
  while looping_var > 2
    if looping_var % 2 != 0 #odd number
      return false
    end
    looping_var = looping_var / 2
  end
  return true
end

# #Test Driven Development
# puts is_power_of_two(1) 
# puts is_power_of_two(16) 
# puts is_power_of_two(3)
# puts is_power_of_two(20)
# puts is_power_of_two(128)

def is_power_of_two(n)
  if n.abs == 1
    return true
  end

  while n > 2
    if n % 2 != 0
      return false
    end
    n = n / 2
  end
  return true
end

#Test Driven Development
puts is_power_of_two(1) 
puts is_power_of_two(16) 
puts is_power_of_two(3)
puts is_power_of_two(20)
puts is_power_of_two(128)