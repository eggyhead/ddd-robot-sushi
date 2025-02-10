class Customer
    attr_accessor :last_order # Association with Order
  end
  
class Order
end

customer = Customer.new
order = Order.new
customer.last_order = order # Linking the customer to an order

# This is the most basic type of relationship. 
# It simply means that two entities are related in some way. 
# For example, a customer and an order. are associated, 
# but the relationship doesn't necessarily imply ownership or a strong dependency.
# In code, this might be represented by a simple link or reference between the two entities.
# Here, @last_order in Customer acts as the association.