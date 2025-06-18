# https://leetcode.com/problems/decode-the-message/?difficulty=EASY&page=1&sorting=W3t9XQ%3D%3D

def create_hash(key)
  #step 1. Initialize an empty hash to store character mappings
  hash = {}
  #step 2. Process the key to create a mapping from encoded letters to actual alphabets
  alphabets = ('a'..'z').to_a
  key.gsub(' ','').split('').uniq.each_with_index do |chr, index|
    hash[chr] = alphabets[index]
  end
  return hash
end

def decode_message(key, message)
  #step 3: Create a substitution map (hash) by analyzing the key string
  mapping = create_hash(key)
  
  #step 4: Decode the message using the substitution map
  output = ''
  message.split('').each do |character|
    if mapping[character]
      output = output + mapping[character]   
    else mapping[character] == ' '
      output = output + ' '
    end
  end   
  return output 
end

# Test Driven Development
puts decode_message("the quick brown fox jumps over the lazy dog", "vkbs bs t suepuv")
puts decode_message("eljuxhpwnyrdgtqkviszcfmabo", "zwx hnfx lqantp mnoeius ycgk vcnjrdb")