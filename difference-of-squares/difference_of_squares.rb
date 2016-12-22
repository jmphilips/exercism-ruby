class Squares 

  def initialize(num)
    @num = num
  end

  def square_of_sum 
    sum = 0
    (1..@num).each { |num| sum += num}
    sum**2
  end

  def sum_of_squares 
    sum = 0 
    (1..@num).each { |num| sum += num**2}
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

  module BookKeeping
    VERSION = 3 # Where the version number matches the one in the test.
  end