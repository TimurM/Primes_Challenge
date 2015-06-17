require 'multi_table'

describe MultiTable do

  describe "#initialize" do
    let(:subject) { MultiTable.new(n:5)}

    it "initializes an instance" do
      expect(subject).to be_a MultiTable
    end

    it "initializes a primes instance variable" do
      expect(subject.primes).to match_array([2, 3, 5, 7, 11])
    end

    it "initializes a table instance variable" do
      expect(subject.table).to be_empty
    end
  end


end
