# https://leetcode.com/problems/defanging-an-ip-address/description/

def defang_i_paddr(address)
  puts address.gsub!(".","[.]")    
end

# Test Driven Development
puts defang_i_paddr("1.1.1.1")
puts defang_i_paddr("255.100.50.0")

# 2nd try

def defang_i_paddr(address)
  return address.gsub!(".", "[.]")
end

# Test Driven Development
puts defang_i_paddr("1.1.1.1")
puts defang_i_paddr("255.100.50.0")