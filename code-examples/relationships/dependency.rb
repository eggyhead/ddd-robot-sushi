class OrderRepository # Could be an interface (using duck typing)
    def find_by_id(id)
        raise NotImplementedError # Force subclasses to implement
    end
end
  
class OrderService
    def initialize(order_repository) # Dependency injection
        @order_repository = order_repository
    end

    def process_order(order_id)
        order = @order_repository.find_by_id(order_id)
        # ... process the order
    end
end
  
# Example usage (assuming a concrete repository class exists):
repo = DatabaseOrderRepository.new
service = OrderService.new(repo)
service.process_order(123)

# This indicates that one entity relies on another, 
# but not in a "has-a" or "part-of" sense. 

# Ruby's dynamic typing allows us to represent dependencies without explicit interfaces (using duck typing). 
# Dependency injection is shown in the OrderService example.