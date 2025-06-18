# https://leetcode.com/problems/find-closest-person/description/

# def find_closest(x, y, z)
#   subtract_xz = (x - z).abs
#   subtract_yz = (y - z).abs

#   if subtract_xz < subtract_yz
#     "1"
#   elsif subtract_xz > subtract_yz
#     "2"
#   elsif subtract_xz == subtract_yz
#     "0"
#   end  

# end  


# Test Driven Development
# puts find_closest(2, 7, 4) 
# puts find_closest(2, 5, 6) 
# puts find_closest(1, 5, 3)

def find_closest(x, y, z)
  a = (x - z).abs
  b = (y - z).abs
  
  if a > b
    return 2
  elsif a < b
    return 1
  elsif a = b
    return 0
  end
end

# Test Driven Development
puts find_closest(2, 7, 4) 
puts find_closest(2, 5, 6) 
puts find_closest(1, 5, 3)