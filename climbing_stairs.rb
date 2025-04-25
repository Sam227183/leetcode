# https://leetcode.com/problems/climbing-stairs/description/


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
