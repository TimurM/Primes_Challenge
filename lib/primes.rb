class Primes

  def self.generate_primes(n)
    primes = []
    primes << 2 if n >= 1

    i = 3
    while primes.length < n
      primes << i if self.is_prime?(i)
      i += 2
    end

    primes
  end

  def self.is_prime?(num)

    sqrt_of_num = Math.sqrt(num)

    2.upto(sqrt_of_num) do |divisor|
      return false if num % divisor == 0
    end

    true
  end
end
