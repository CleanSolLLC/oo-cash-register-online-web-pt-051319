require 'pry'

class CashRegister

  attr_accessor :total, :items, :discount, :cash_register_with_discount

  def initialize(total=0, discount)
    @total = total #total of cash_register
    @discount = discount
  end

  def add_item(item,price,quantity=0)
    @item  = item
    @price = price
    @quantity = quantity
    if quantity != 0
      @total += price *quantity
    else
      @total += price
    end
  end

    def apply_discount
      if @discount == 0
        raise "There is no discount to apply."
      end
        @total -= @total * @discount / 100
        msg = "After the discount, the total comes to $#{self.total.to_i}."
        binding.pry
    end
  end
