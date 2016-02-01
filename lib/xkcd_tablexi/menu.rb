    class Menu
    attr_reader :items

    def initialize(items)
      @items = items
    end

    #this type of sort is an efficient way to start our comparisons off
    def lowest_price
      items.min_by(&:price).price
    end

    # inject is a handy method to add all the items to compare against the target price
    def sum
      items.inject(0) { |sum, item| sum + item.price }
    end


    def repeated_combinations(qty)
      items.repeated_combination(qty)
    end

    #this is our solution that is called upon by cli for the user interface
    def to_output
      puts "Here is a combination that works:"
      items_count.map do |k, v|
        #this is calling on Item output
        "The #{k.formatted_output} (#{v} of these)"
      end
    end

    private

    def items_count
      #returns hash of all items in class and counts them
      items_count = Hash.new(0)
      items.each do |item|
        items_count[item] += 1
      end
      items_count
    end
  end