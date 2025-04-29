# https://leetcode.com/problems/find-the-winning-player-in-coin-game/description/

def winning_player(x, y) 
  # x is number of coin with values 75
  # y is number of coin with values 10
  # x + 4*y is optimal.
  
  loop_x = x
  loop_y = y

  # Variable to keep count of number of number_of_turns.
  number_of_turn = 0
  # if number_of_turn was true, it was alice. If number_of_turn was false it was bob.

  while (loop_x >= 1 && loop_y >= 4)
    loop_x = loop_x-1
    loop_y = loop_y-4
    number_of_turn +=1
  end

  # renumber_of_turn "draw" if flag == -1 
  # renumber_of_turn flag == true ? "Alice" : "Bob"

  if number_of_turn % 2 == 0
    return "Bob"
  else 
    return "Alice"
  end
end

# Test driven development
puts winning_player(2, 7) 
puts winning_player(4, 11)