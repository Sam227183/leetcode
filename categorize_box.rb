# https://leetcode.com/problems/categorize-box-according-to-criteria/

# length = 1000, width = 35, height = 700, mass = 300
# In ruby, power of something is x**power and not x^power
def categorize_box(length, width, height, mass)
  volume_dimension_check = if (length >= 10**4 || width >= 10**4 || height >= 10**4) || (length*width*height >= 10**9) 
    "Bulky"
  end

  mass_check = if mass >= 100
    "Heavy"
  end

  if volume_dimension_check == "Bulky" && mass_check == "Heavy"
    "Both"
  elsif volume_dimension_check == "Bulky" && mass_check != "Heavy"
    "Bulky"
  elsif volume_dimension_check != "Bulky" && mass_check == "Heavy"
    "Heavy"
  else 
    "Neither"
  end
end

# Test Driven Development
puts categorize_box(1000, 35, 700, 300)
puts categorize_box(200, 50, 800, 50)
puts categorize_box (1000, 35, 700, 300)