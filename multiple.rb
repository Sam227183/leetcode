# #1. Random number generator
# num1 = rand(-100..100)
# num2 = rand(-100..100)

# #2. Give the definition
# puts num1 + num2

# def smallest_even_multiple(n)
#   if n % 2 == 0
#       puts n
#   else n % 2 != 0
#       puts 2 * n
#   end
# end

# smallest_even_multiple(5)
# smallest_even_multiple(4)
# smallest_even_multiple(7)

chainring = 52
cog       = 11
ratio     = chainring / cog.to_f
puts ratio

chainring = 30
cog       = 27
ratio     = chainring / cog.to_f
puts ratio

class Gear
  attr_reader :chainring, :cog
  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
  end

  def ratio
    chainring / cog.to_f
  end
end

puts Gear.new(52, 11).ratio
puts Gear.new(30, 27).ratio