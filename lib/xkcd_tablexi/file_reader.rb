require 'csv'

  #We want FileReader to grab the first line of the input file, using Ruby's CSV library, and identify that as the "target price" against which the combinations are measured, then read the following lines into our menu as k|v pairs

  class FileReader
    # the following line allows FileReader to access properly formatted integers
    include Currency

    def initialize(file)
      @file = file
    end

    #this accesses the first line of the input file by asking for the first element of the values array
    def target_price
      currency_to_i(CSV.read(file).first.first)
    end

    #creates Item objects from the rest of our CSV file
    def items
      CSV.read(file)[1..-1].map { |a| Item.new(*a) }
    end

    #this is housekeeping and needn't be part of the class' public interface
    private
    def file
      @file
    end
  end
