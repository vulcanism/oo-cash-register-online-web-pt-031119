class CashRegister
  attr_accessor :total, :discount, :last_trans
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
  end
  
  def apply_discount
    @total = @total - @discount * 10
    if @discount > 0
     "After the discount, the total comes to $#{total}"
   else
     "There is no discount to apply."
   end
  end
  
end
