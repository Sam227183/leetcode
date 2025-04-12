def is_perfect_square(num)
   if num == 1
    return true
   end

   looping_var = 2

  while (looping_var) * (looping_var) <= num
    if (looping_var) * (looping_var) == num
      return true
    end
  
    looping_var = looping_var + 1
  end
  return false
end


# Test Driven Development
puts is_perfect_square(16) == true
puts is_perfect_square(14) == false

