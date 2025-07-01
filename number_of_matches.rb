# https://leetcode.com/problems/count-of-matches-in-tournament/description/

def number_of_matches(n)
  looping_var = n

  # Variables to keep count of matches.
  match_counter = 0

  while looping_var > 1
    if looping_var % 2 == 0 #even
      looping_var = looping_var/2
      # puts "even #{looping_var}"
      match_counter = match_counter + looping_var
    elsif looping_var % 2 != 0 #odd
      looping_var = ((looping_var - 1)/2)+1
      # puts "odd #{looping_var}"
      match_counter = match_counter + looping_var - 1
    end
  end
  return match_counter
end

# Test driven development
puts number_of_matches(7)
puts number_of_matches(14) 

# 2nd try
def number_of_matches(n)
  match_counter = []

  while n > 1
    if n.odd?
      match_counter << (n - 1)/2 
      n = (n - 1)/2 + 1
     elsif n.even?
      n = n / 2
      match_counter << n
      end
  end
  return match_counter.sum
end

# Test driven development
puts number_of_matches(7)
puts number_of_matches(14) 