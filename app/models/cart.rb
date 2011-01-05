class Cart
    attr_reader :items   
        
    def add_product(product)
        current_item = @items.find {|item| item.product == product}
        if current_item
            current_item.increment_quantity
        else
            @items << CartItem.new(product)
        end
    end
    
    def initialize
        @items = []
    end
    
    def empty?
        items.empty?
    end    
    
    def total
        sum = 0
        items.each do |i|
            sum = sum + i.price
        end
        sum
    end
end
