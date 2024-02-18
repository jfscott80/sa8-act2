# Problem 1: Basic Class Definition and Instantiation
# Objective: Define a Laptop class with attributes brand and model. Instead of using attr_accessor or attr_reader,
# implement custom getter methods for these attributes. Instantiate an object of this class and use the getter methods
# to display its attributes.
class Laptop
    def initialize(brand, model)
        @brand = brand
        @model = model
    end
    def brand
        @brand
    end
    def model
        @model
    end
end
# test code
# pc = Laptop.new('lenovo', 'ideapad')
# p pc.brand, pc.model

# Problem 2: Using attr_reader and attr_writer
# Objective: Create a Gadget class with name and price attributes. Use attr_reader for name and attr_writer for price.
# Demonstrate how to read the name and update the price of a Gadget instance.
class Gadget
    attr_reader :name
    attr_writer :price
    def initialize(name)
        @name = name
    end
    def price=(price)
        @price = price
    end
end
# test code
# g = Gadget.new('phone')
# p g.name
# g.price = 40
# p g.inspect
