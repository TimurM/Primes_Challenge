class MultiTable
  attr_reader :primes, :table

  def initialize(n: 0)
    @table = []
    @primes = Primes.generate_primes(n)
  end
end
