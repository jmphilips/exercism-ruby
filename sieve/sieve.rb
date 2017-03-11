# This code is the answer to Sieve problem on exercism.
class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    starter_array = (2..@limit).to_a
    primes = []
    while starter_array.length > 0
      primes << starter_array.shift
      starter_array = starter_array.select { |num| num % primes.last != 0 }
    end
    primes
  end

end
