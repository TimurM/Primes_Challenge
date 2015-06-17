require 'primes'

describe Primes do
  describe "initalizes primes" do
    it "initalizes primes when method is called" do
      primes = Primes.new(10)
      expect(primes).to be_a Primes
    end
  end
end
