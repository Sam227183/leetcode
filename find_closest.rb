# https://leetcode.com/problems/find-closest-person/description/

def find_closest(x, y, z)
  subtract_xz = (x - z).abs
  subtract_yz = (y - z).abs

  if subtract_xz < subtract_yz
    "1"
  elsif subtract_xz > subtract_yz
    "2"
  elsif subtract_xz == subtract_yz
    "0"
  end  

end  


# Test Driven Development
puts find_closest(2, 7, 4) 
puts find_closest(2, 5, 6) 
puts find_closest(1, 5, 3)