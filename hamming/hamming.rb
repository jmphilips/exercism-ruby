module Hamming
  def self.compute(first, second)  
    if first.length != second.length
      raise ArgumentError.new("Make sure strands are the same length")
    end
    first.split('').zip(second.split('')).map { |arr| arr.first == arr.last }.count(false)
  end
end