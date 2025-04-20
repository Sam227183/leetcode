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


