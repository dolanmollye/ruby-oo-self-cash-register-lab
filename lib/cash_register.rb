class CashRegister
attr_accessor :total, :discount, :last_transaction_total

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item (title, price, quantity=1)
        quantity.times do
        @items << title
        end
        self.total += price * quantity
        self.last_transaction_total = price * quantity
       
    end

    def apply_discount
       if discount != 0
        self.total -= self.discount * 10
       "After the discount, the total comes to $#{self.total}."
       else 
        "There is no discount to apply."
       end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction_total
    end

    
end

