# https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/description/

def number_of_steps(num)

 looping_var = num
 
 step_counter = 0
 
 while looping_var >= 1
    if looping_var % 2 == 0
     looping_var = looping_var / 2
    elsif looping_var % 2 != 0
     looping_var = looping_var - 1
    end
    step_counter += 1
 end
 return step_counter
end

# Test driven development
puts number_of_steps(14)
puts number_of_steps(8) 
puts number_of_steps(123)

# 2nd try

def number_of_steps(num)
   step_counter = 0

   while num > 0
      if num.even?
         num = num / 2
         step_counter += 1
      elsif num.odd?
         num = num - 1
         step_counter += 1
      end
   end
   return step_counter
end

# Test driven development
puts number_of_steps(14)
puts number_of_steps(8) 
puts number_of_steps(123)