class OrderItem # Aggregate Root
    attr_accessor :ingredients # Aggregation
end

class Ingredient
end

# orderItem = OrderItem.new
# rice = Ingredient.new
# orderItem.ingredients << rice

# This represents a "has-a" relationship, where one entity is part of another. 
# An order item has ingredients. The ingredient is part of the order item, 
# but it can also exist independently (you could have rice in a grocery store). 
# In DDD, the aggregate is the "owner" of the parts, and it controls their lifecycle.