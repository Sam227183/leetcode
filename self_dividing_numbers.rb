# https://leetcode.com/problems/self-dividing-numbers/

def self_dividing_numbers(left, right)
  # Have an initial array
  initial_arr = []
  # Go through from left to right each of them.
  (left..right).to_a.each do |element|
  # If the number returns true for check_self_divide,
    if check_self_divide(element)
    # will add that number to the array.
      initial_arr << element
    end
  end
  
  # Once the loop is done, return the array.
  return initial_arr
end

def check_self_divide(n)
  if n < 10
    # puts "0. #{n}"
    return true
  elsif n >= 10 && n <= 10**4
    arr = n.to_s.split('')
    # puts "1. #{n}"
    arr.each do |element|
      # puts "2. #{n}"
      return false if element.to_i == 0
      if n % (element.to_i) != 0
       return false
      end
    end
    return true
  end  
end



# Test Driven Development
puts check_self_divide(9)
puts check_self_divide(55)
puts self_dividing_numbers(1, 22)
puts self_dividing_numbers(47, 85)