# https://leetcode.com/problems/length-of-last-word/description/

# def length_of_last_word(s)
#   return s.split(' ').last.length
# end

# # Test Driven Development
# puts length_of_last_word("Hello World")
# puts length_of_last_word("   fly me   to   the moon  ")
# puts length_of_last_word("luffy is still joyboy")

def length_of_last_word_2 str
  length = str.length
  count = 0
  looping_var = length - 1
  # loop
  while looping_var > -1 
    # puts "#{str[looping_var]} is at index #{looping_var}. The value of count right now is #{count}"
    if count != 0 && str[looping_var] == ' '
      return count  
    elsif str[looping_var] != ' '
      count += 1
    end
    looping_var -= 1
  end
  return count
end

# Test Driven Development
puts length_of_last_word_2("   fly me   to   the moon  ")
puts length_of_last_word_2("luffy is still  joyboy")
puts length_of_last_word_2("Hello World")