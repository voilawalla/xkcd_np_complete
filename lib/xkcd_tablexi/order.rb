  class Order
    attr_reader :target_price, :menu

    def initialize(target_price, menu)
      @target_price = target_price
      @menu = menu
    end

    #creates array of all combinations that exactly equal target_price and do not duplicate other orders
    def find_combinations
      orders = []
      order_qty_range.each do |qty|
        menu.repeated_combinations(qty).map do |combination|
          order = Menu.new(combination)
          orders << order if order.sum == target_price
        end
      end
      orders
    end

    private

    #sets finite range for how many of any of the menu items can be ordered
    def order_qty_range
      (1..max_order_qty)
    end

    #defines how many of the cheapest item will not exceed the target price
    def max_order_qty
      target_price / menu.lowest_price
    end
  end

  #sorry, i can't keep 'find_combinations' straight without looking at this from menu.rb
  # def repeated_combinations(qty)
  #     items.repeated_combination(qty)
  #   end
