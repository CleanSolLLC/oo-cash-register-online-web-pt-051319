require 'pry'

class CashRegister

  attr_accessor :total, :items, :discount, :cash_register_with_discount

  def initialize(total=0, discount = 20)
    @total = total #total of cash_register
    @item_total = 0 #total of items
    @discount = discount
  end

  def add_item(item,price,quantity=0)
    @item  = item
    @price = price
    @quantity = quantity
    if quantity != 0
      @total+=(price*quantity)
    else
      @total+=price
    end

  end

    def apply_discount
      if @discount != 0
        self.total = @price - (@price*((@discount)/100.0))
        self.total.to_i
        msg = "After the discount, the total comes to $#{@total.to_i}."
      elsif @discount == 0
        self.total.to_i
        msg = "There is no discount to apply."
      end
      msg
    end

  end
