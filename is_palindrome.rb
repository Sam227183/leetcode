def is_palindrome(x)
  # 1. Guard Clauses
  return false if x < 0
  return true if x >= 0 && x <= 9  
  
  # 2. Main Logic
  x = x.to_s
  l_checker = 0
  r_checker = (x.length - 1)

  while l_checker <= (x.length - 1) && r_checker > 0
    if x[l_checker] == x[r_checker]
      l_checker += 1
      r_checker -= 1
    else
      return false
    end
  end
  return true
end

arr = 1..10000
puts arr.to_a.select{|i| is_palindrome(i) == true}
 

# Test driven development
# puts is_palindrome(121)
# puts is_palindrome(-121)
# puts is_palindrome(10)