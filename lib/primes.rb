
class Primes

  def initialize()
    @primes = []
  end

  def primes(n)
    i = 2

    while @primes.length < n
      @primes << i if is_prime?(i)
      i += 1
    end
    
    @primes
  end

  private

  def is_prime?(num)
    (2...num).each do |divisor|
      return false if num % divisor == 0
    end

    true
  end

end
