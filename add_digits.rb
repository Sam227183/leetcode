# https://leetcode.com/problems/add-digits/description/

def add_digits(num)
  looping_var = num

  while looping_var.to_s.length >= 2
    #puts "1. #{looping_var}" #Debugging Statement
    if looping_var.to_s.split('').map{|element| element.to_i}.sum == 1
      #puts "2. #{looping_var}"
      return looping_var
    else
      #puts "3. #{looping_var}"
      looping_var = looping_var.to_s.split('').map{|element| element.to_i}.sum
    end
  end
  #puts "4. #{looping_var}"
  return looping_var
end


# Test Driven Development
puts add_digits(38)
puts add_digits(0)