class Order # Aggregate Root
    attr_accessor :items # Composition
  
    def initialize
      @items = [] # Initialize an empty array of rooms
    end
  end
  
class OrderItem # Could be a Value Object
attr_accessor :name, :price

def initialize(name, price)
    @name = name
    @price = price
end
end
  
order = Order.new
soup = OrderItem.new("miso soup", 3.0)
edamame = OrderItem.new("edamame", 2.50)
order.items << soup # Add soup to order
order.items << edamame

# This is a stronger form of aggregation, 
# representing a "part-of" relationship where the parts cannot exist independently. 
# A order item is a part of an order. 
# If the order is cancelled, the order item ceases to exist.
# In DDD, composition often implies that the aggregate 
# is solely responsible for the lifecycle of its parts.