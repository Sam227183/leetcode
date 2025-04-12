# https://leetcode.com/problems/climbing-stairs/description/
# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

# Example 1:

# Input: n = 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:

# Input: n = 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step
 

# Constraints:

# 1 <= n <= 45

# Solution: This is a numerical programming problem. There is always a pattern which can be observed if we visualize on paper. After visualizing the pattern we saw that here the steps follow fibonacci sequence. So, we just need to pre-create that sequence in an array and then lookup for the position n-1 to find the number of steps needed.


def climb_stairs(n)
  if n < 4
    return n 
  end
  fibonacci_array[n-1]
end

def fibonacci_array
  # Step 1: Create an initial array
  arr = [1,2]

  # Step 2: looping var to 1
  n = 1

  # Step 3: Run loop and pre generate the fibonacci array
  while n <= 43
      length = arr.length
      #In fibonacci sequence, the next elemeent is the sum of the last 2 elements
      arr.push(arr[length-1] + arr[length-2])
      
      # Step 4: Remember to increment the looping var
      n += 1
  end

  # Step 5: Finally return the fibonacci array so other function can use it
  return arr
end
