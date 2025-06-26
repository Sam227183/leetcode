# https://leetcode.com/problems/harshad-number/description/

def sum_of_the_digits_of_harshad_number(x)
  #1. 1-digit integer and 3-digit integer
  if 1<= x && x <=9
    return x
  elsif x == 100
    return 1
  end  
  
  #2. Two-digit integer, I want to split it into 2 different number.
  if 9 < x && x < 100
    # Assign the output in an array.
    sum = x.to_s.split('').map{|element| element.to_i}.sum
    # Change each string to integer again and add those.
      # I want to divide x by the sum of array_member.
    if x % sum == 0
      return sum 
    else 
      return -1
    end
  end
end


# Test Driven Development
puts sum_of_the_digits_of_harshad_number(18)
puts sum_of_the_digits_of_harshad_number(23)
puts sum_of_the_digits_of_harshad_number(7)
puts sum_of_the_digits_of_harshad_number(100) 

def sum_of_the_digits_of_harshad_number(x)
  sum_of_digits = x.digits.sum

  if x % sum_of_digits == 0
    return sum_of_digits
  else
    return -1
  end
end

# Test Driven Development
puts sum_of_the_digits_of_harshad_number(18)
puts sum_of_the_digits_of_harshad_number(23)