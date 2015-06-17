require_relative 'primes'

class MultiTable
  attr_reader :primes, :table

  def initialize(n: 0)
    @table = []
    @primes = Primes.generate_primes(n)
  end

  def generate_table

    @primes.each do |num1|
      row = []
      @primes.each do |num2|
        product = (num1*num2).to_s
        str = "%#{longest_string}s" % product
        row << str
      end

      @table << row
    end
  end


  def display_table
    first_row = "%#{longest_string}s" % " "

    first_column = @primes.map do |num|
      str = "%#{longest_string+1}s" % num
      first_row << str
      str
    end

    puts first_row
    @table.each_with_index do |row, idx|
      puts first_column[idx] + row.join(" ")
    end
  end

  private

  def longest_string
    longest_string = longest_string || (@primes[-1]**2).to_s.length
  end
end
