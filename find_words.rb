# https://leetcode.com/problems/keyboard-row/

def find_words(words)
  # step 1. make arrays and sort in alphabetical order
  row_1 = ['q','w','e','r','t','y','u','i','o','p'].sort
  row_2 = ['a','s','d','f','g','h','j','k','l'].sort
  row_3 = ['z','x','c','v','b','n','m'].sort

  # step 2. take word from the input and sort
  words_checked = words.map{ |e| e.downcase.split('').uniq.sort}

  # step 3. loop will check 1,2,3
  final_arr = []

  words_checked.each.with_index  do |element, index|
    if str_includes?(element, row_1) || str_includes?(element, row_2) || str_includes?(element, row_3)
      final_arr << words[index]
    end
  end
  return final_arr
end

  # step 4. check each character one by one
def str_includes?(element, row)
  element.each do |e|
    unless row.include?(e)
      return false
    end
  end
  return true
end

#Test Driven Development
puts find_words(["Hello","Alaska","Dad","Peace"])
puts find_words(["omk"])
puts find_words(["adsdf","sfd"])