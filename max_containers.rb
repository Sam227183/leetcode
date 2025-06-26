# https://leetcode.com/problems/maximum-containers-on-a-ship/

# You are given a positive integer n 
# representing an n x n cargo deck on a ship. 
# Each cell on the deck can hold one container 
# with a weight of exactly w.

# However, the total weight of all containers, 
# if loaded onto the deck, must not exceed 
# the ship's maximum weight capacity, maxWeight.

# Return the maximum number of containers 
# that can be loaded onto the ship.

# Current total weight will increase by w, 2w, 3w.

def max_containers(n, w, max_weight)
  looping_var = 0
  currentTotalWeight = 0

   # Checking if current total weight(w) is not exceeding the maximum weight
  while looping_var < n*n
    if currentTotalWeight >= max_weight
     # If current total weight is exceeding, then return looping_var.
      return looping_var
    else 
      looping_var = looping_var + 1
      currentTotalWeight = currentTotalWeight + w
    end
  end
  return looping_var
end

# Test Driven Development
puts max_containers(2, 3, 15) 
puts max_containers(3, 5, 20)

# 2nd answer

def max_containers(n, w, max_weight)
  number_of_cells = n * n
  output = 0 #number of container
  current_weight = 0

  while current_weight + w <= max_weight && output + 1 <= number_of_cells
    output += 1
    current_weight += w  
  end
  return output
end

#Test driven development
puts max_containers(2, 3, 15)
puts max_containers(3, 5, 20)