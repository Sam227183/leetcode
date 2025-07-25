# https://leetcode.com/problems/split-a-string-in-balanced-strings/

def balanced_string_split(s) 
  checker = 0
  num_output = 0
  r_count = 0
  l_count = 0

  while checker <= s.length
    if s[checker] == "R"
      r_count += 1
    elsif #s[checker] == "L" (no need to write this again)
      l_count += 1
    end

    #You can use multiple "if"s in one loop.
    if r_count == l_count
      num_output +=1
      r_count = 0 #Don't forget to reset the count.
      l_count = 0 #Don't forget to reset the count.
    end

    checker += 1 #(no need to write it twice)
  end

  return num_output
end

#Test Driven Development
puts balanced_string_split("RLRRLLRLRL")
puts balanced_string_split("RLRRRLLRLL")
puts balanced_string_split("LLLLRRRR")

#2nd try

def balanced_string_split(s)
  l_check = []
  r_check = []
  checker = 0
  output = 0

  while checker < s.length
    if s[checker] == "R"
      r_check << s[checker]
    elsif s[checker] == "L"
      l_check << s[checker]
    end
    checker += 1
    if l_check.length == r_check.length
      output += 1
      l_check = []
      r_check = []
    end
  end
  return output
end

#Test Driven Development
puts balanced_string_split("RLRRLLRLRL")
puts balanced_string_split("RLRRRLLRLL")
puts balanced_string_split("LLLLRRRR")