# https://leetcode.com/problems/construct-the-rectangle/description/

def construct_rectangle(area)
  # 1. width and length are divisors of area. Find that divisor.
 looping_var = 1
 array_divisor = []
 
 while looping_var <= area
   if area%looping_var == 0
     array_divisor.push([looping_var, area/looping_var])
   end 
     looping_var = looping_var + 1
 end
 
 # Lets first sort
 return len_wid_compare(array_divisor.sort!) 
end

def len_wid_compare(arr)
 diff = 10**7
 len = -1
 width = -1

 arr.each do |i|
   if (i[0] >= i[1])
     current_diff = (i[0] - i[1]).abs
     if current_diff < diff
       diff = current_diff
       len = i[0]
       width = i[1]
     end
   end
 end

 if len > 0 
   return [len, width]
 end
end

# Test Driven Development
puts construct_rectangle(4) 
puts construct_rectangle(37) 
puts construct_rectangle(122122)
