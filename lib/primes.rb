class Primes

  def self.generate_primes(n)
    primes = []
    i = 2

    while primes.length < n
      primes << i if self.is_prime?(i)
      i += 1
    end

    primes
  end

  def self.is_prime?(num)
    return false if num == 4

    sqrt_of_num = Math.sqrt(num)
    (2..sqrt_of_num).each do |divisor|
      return false if num % divisor == 0
    end

    true
  end

end
