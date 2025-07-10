# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

def max_profit(prices)
  # 1. get the smallest value in array
  smallest = prices.min
  n = prices.length

  index = prices.find_index(smallest)
  
  # 2. array slicing
  sliced_array = prices[index...n]
  largest = sliced_array.max

  # 3. final comparison
  if largest > smallest
    return largest - smallest
  else
    return 0
  end
end

# Better solution - using two pointers

def max_profit(prices)
  return 0 if prices.empty?

  min_price = prices[0]
  max_profit = 0

  prices.each do |price|
    if price < min_price
      min_price = price
    else
      max_profit = [max_profit, price - min_price].max
    end
  end

  max_profit
end


# Test Driven Development
puts max_profit([7,1,5,3,6,4])
puts max_profit([7,6,4,3,1])