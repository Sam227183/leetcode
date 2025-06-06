# https://leetcode.com/problems/longest-common-subsequence/description/
# medium leetcode problem 

def longest_common_subsequence(s,t)
  #Step 1: declare and initialize static memoization array
  mem_arr = Array.new(s.length+1){Array.new(t.length+1, '')}

  #Step 2: logic
  row_num = 1
  col_num = 1
  matched_ltr = ''
  # puts mem_arr
  while row_num <= s.length
    while col_num <= t.length
      #logic
      # puts row_num
      # puts col_num
      last_str = [mem_arr[row_num-1][col_num], mem_arr[row_num][col_num-1], mem_arr[row_num-1][col_num-1]].max_by(&:length)
      # puts last_str
      # if doesn't match
      if s[row_num-1] != t[col_num-1]
        mem_arr[row_num][col_num] = last_str
      else
        if s[row_num-1] == matched_ltr
          mem_arr[row_num][col_num] = last_str
        else
          mem_arr[row_num][col_num] = last_str + s[row_num-1]
          matched_ltr = s[row_num-1]
        end
      end
      col_num += 1
    end
    matched_ltr = ''
    col_num = 1
    row_num += 1
  end

  if mem_arr[-1][-1].empty? 
    return 0
  else
    return mem_arr[-1][-1].length
  end
end

puts longest_common_subsequence("abcde", "ace")
puts longest_common_subsequence("abc", "abc")
puts longest_common_subsequence("abc", "def")