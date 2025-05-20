# https://leetcode.com/problems/length-of-last-word/description/

def length_of_last_word(s)
  return s.split(' ').last.length
end

# Test Driven Development
puts length_of_last_word("Hello World")
puts length_of_last_word("   fly me   to   the moon  ")
puts length_of_last_word("luffy is still joyboy")

def length_of_last_word_2 str

end

puts length_of_last_word_2("   fly me   to   the moon  ") == 4
puts length_of_last_word_2("luffy is still  joyboy") == 6
puts length_of_last_word_2("Hello World") == 5