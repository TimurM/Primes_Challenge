require 'multi_table'

describe MultiTable do

  describe "#initialize" do
    let(:subject) { MultiTable.new(n:5)}
    let(:subject2) { MultiTable.new(n:0)}

    it "initializes an instance" do
      expect(subject).to be_a MultiTable
    end

    it "sets @primes variable to an array" do
      expect(subject.primes).to match_array([2, 3, 5, 7, 11])
    end

    it "sets @primes to '0' if 'n' is zero" do
      expect(subject2.primes).to be_empty
    end

    it "initializes a table instance variable" do
      expect(subject.table).to be_empty
    end
  end

  describe "#generate_table" do
    let(:subject) { MultiTable.new(n:5)}
    let(:subject2) { MultiTable.new(n:0)}

    it "adds rows to the table" do
      subject.generate_table
      expect(subject.table.length).to eq(5)
    end

    it "table is empty if there are no prime numbers" do
      subject2.generate_table
      expect(subject.table.length).to eq(0)
    end

    it "adds the right number of spaces for each row" do
      subject.generate_table
      largest_prime = subject.primes[-1]
      longest_prime_prod = (largest_prime**2).to_s.length
      row = subject.table[-1]

      row.each do |colm|
        expect(colm.length).to eq(longest_prime_prod)
      end
    end
  end

  describe "#display_table" do
    let(:subject) { MultiTable.new(n:5)}

    it 'should capture first row' do
      subject.generate_table
      expect {subject.display_table}.to output(/2   3   5   7  11/).to_stdout
    end

    it 'should capture first row' do
      subject.generate_table
      expect {subject.display_table}.to output(/2   3   5   7  11/).to_stdout
    end

    it "should capture column prime and product of primes" do
      subject.generate_table
      expect {subject.display_table}.to output(/11 22  33  55  77 121/).to_stdout
    end
  end
end
