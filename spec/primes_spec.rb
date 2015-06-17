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

    it "returns 'n' number of prime numbers" do
      primes = subject.primes(10)
      expect(primes.length).to eq(10)
    end
  end
end
