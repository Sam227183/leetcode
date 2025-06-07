def find_words_containing(words, x)
  #loop condition
  counter = 0
  buffer = []
  
  #loop: I want to check if every word includes x
  while counter < words.length
    if words[counter].include?(x)
      # want to save the index number of the words
      buffer << counter
    end
    counter += 1
  end
  return buffer
end

# Test Driven Development
puts find_words_containing(["leet","code"], "e")
puts find_words_containing(["abc","bcd","aaaa","cbc"], "a")
puts find_words_containing(["abc","bcd","aaaa","cbc"], "z")