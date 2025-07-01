# https://leetcode.com/problems/three-divisors/description/

def is_three(n)
 #Guard clauses
 if n < 4
  return false
 end

 looping_var = 2

  # Variable to keep count of number of divisors. 
  # We know that 1 and the number would be already two divisors of n. 
  # So, we start number_of_known_divisors with 2.
  number_of_known_divisors = 2

  # Now we go through a loop, checking each number 
  # from 2 to n-1 and see if it is a divisor of n.
  while looping_var <= n-1
    if n % looping_var == 0
      # If it found a divisor, I increased the count by 1.
      number_of_known_divisors += 1
    end
    looping_var += 1
  end

 #At the end, once the loop is over, I check if number_of_known_disvors are 3. 
 #If they are 3, then great, I return true. If they are anything else I return false.
  if number_of_known_divisors == 3
    return true
  else
    return false
  end
end

#four divisors 

def is_four(n)
  if n < 4
    return false
end

looping_var = 2

number_of_known_divisors = 2

while looping_var <= n-1
  if n % looping_var == 0
     number_of_known_divisors += 1
  end
  looping_var += 1

end

if number_of_known_divisors == 4
  return true
else
  return false
end
  
end

#2nd try

def is_three(n)
  # 1. Edge case
  return false if n < 4

  # 2. Premise: 1 and n itself will always be divisors.
  # Therefore, all I need to find is only 1 more divisor.
  divisor_counter = 2
  m = 2

  while m < n
    if n % m == 0
      divisor_counter += 1
    end
    m += 1
  end

  return true if divisor_counter == 3
end

# Test driven development
puts is_three(2)
puts is_three(4)