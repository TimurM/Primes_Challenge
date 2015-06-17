require 'primes'

describe Primes do
  describe "initalizes primes" do
    let(:subject) { Primes.new(10) }

    it "initalizes primes when method is called" do
      expect(subject).to be_a Primes
    end

    it "the initialize method should creat a primes instance variable" do
      expect(subject.instance_variable_get(:@primes)).to eq([])
    end
  end
end
