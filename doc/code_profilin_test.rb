require 'profile'

class Calculator
  def self.count_to_large_number
    x=0
    100_000.times{x+=1}
  end
  def self.count_to_small_number
    x=0
    1000.times{x+=1}
  end
end

puts Calculator.count_to_large_number
puts Calculator.count_to_small_number