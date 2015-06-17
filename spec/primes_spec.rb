require 'primes'

describe Primes do
  describe "initalizes primes" do
    let(:subject) { Primes.new() }

    it "initalizes primes when method is called" do
      expect(subject).to be_a Primes
    end

    it "the initialize method should creat a primes instance variable" do
      expect(subject.instance_variable_get(:@primes)).to eq([])
    end
  end

  describe "#primes(n)" do
    let(:subject) { Primes.new() }
    let(:primes)  { subject.primes(5) }

    it "returns 'n' number of prime numbers" do
      expect(primes.length).to eq(5)
    end

    it "return valid primes" do
      expect(primes).to match_array([2, 3, 5, 7, 11])
    end

    it "returns an empty array if 'n' is 0" do
      primes = subject.primes(0)
      expect(primes).to match_array([])
    end
  end
  
end
