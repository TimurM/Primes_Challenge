require 'primes'

describe Primes do

  describe "#primes(n)" do
    let(:primes)  { Primes.generate_primes(5) }

    it "returns 'n' number of prime numbers" do
      expect(primes.length).to eq(5)
    end

    it "return valid primes" do
      expect(primes).to match_array([2, 3, 5, 7, 11])
    end

    it "returns an empty array if 'n' is 0" do
      primes = Primes.generate_primes(0)
      expect(primes).to match_array([])
    end
  end

end
