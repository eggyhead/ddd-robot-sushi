## Customer has a one-to-many relationship with `Order` 
## (one customer can place multiple orders).
class Customer
    attr_accessor :orders, :addresses

    def initialize
        @orders = []
    end

    def place_order(order)
        @orders << order
        order.customer = self
    end
end
  
## Order has a one-to-many relationship with `OrderItem` 
## (one order can have multiple items). 
## Has a many-to-one relationship with `Customer` 
## (an order belongs to one customer).
class Order
    attr_accessor :order_items, :customer

    def initialize
        @order_items = []
    end

    def add_item(order_item)
        @order_items << order_item
        order_item.order = self
    end
end
  
## OrderItem Has a many-to-one relationship with `Order` 
## (an order item belongs to one order). 
## Has a one-to-many relationship with `Ingredient` 
## (an order item can have multiple ingredients).
class OrderItem
    attr_accessor :ingredients, :order, :quantity, :name, :price

    def initialize(ingredients, quantity, name, price)
        @quantity = quantity
        @price = price
        @name = name
        @ingredients = ingredients
    end
end
  
  
class Ingredient
    attr_accessor :name

    def initialize(name, price)
        @name = name
    end
end
  
  
# Example Usage
customer = Customer.new

rice = Ingredient.new("rice")
seaweed = Ingredient.new("seaweed")
cucumber = Ingredient.new("cucumber")
ingredient_list = [rice, seaweed, cucumber]

order = Order.new
order_item = OrderItem.new(ingredient_list, 1, "cucumber roll", 11.00)
order.add_item(order_item)

customer.place_order(order)

puts order.order_items.first.name # Output: cucumber roll