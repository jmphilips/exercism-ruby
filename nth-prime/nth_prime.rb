require 'prime'

class Prime
  def self.nth(num)
    unless num > 0
      raise ArgumentError.new("No Zeroeth")
    end
    Prime.first(num).last
  end
end