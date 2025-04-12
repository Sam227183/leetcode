# https://leetcode.com/problems/find-the-pivot-integer/description/

# Given a positive integer n, find the pivot integer x such that:

# The sum of all elements between 1 and x inclusively equals the sum of all elements between x and n inclusively.
# Return the pivot integer x. If no such integer exists, return -1. It is guaranteed that there will be at most one pivot index for the given input.

def pivot_integer(n)
  if n == 1
    return 1
  end

  #Step1. Sum of the whole arithmetic progression.

  totalsum = (n*(n+1))/2

  #Step2. Find pivot
    #2-1. Find sum from 1 to loop_var

  sum = (loop_var*(loop_var+1))/2

    #2-2. Remaining sum = (totalsum - sum) + loop_var

end


# Test Driven Development
puts pivot_integer(8) == 6
puts pivot_integer(1) == 1
puts pivot_integer(4) == -1