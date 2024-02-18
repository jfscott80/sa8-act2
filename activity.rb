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


# Problem 3: Custom Setter with Validation
# Objective: Define a User class with a username attribute. Implement a custom setter for username that validates the
# username is not empty or nil. Raise an ArgumentError if the validation fails.
class User
    attr_writer :username
    def name=(name)
        raise ArgumentError, "Name cannot be empty" if name.to_s.strip.empty?
        @name = name
    end
end
# test code
# fitz = User.new
# fitz.name = ""  #raise error message
# p fitz.inspect
# fitz.name = "fitz"
# p fitz.inspect


# Problem 4: Inheritance with Base and Subclasses
# Objective: Create a base class Appliance with a method show_info that prints "This is a household appliance."
# Define two subclasses, Refrigerator and Microwave, that inherit from Appliance. Add a unique method to each subclass
# that prints specific information about the appliance. Ensure show_info is shared and not overridden.
class Appliance
    def show_info
        p "This is a household appliance."
    end
end
class Refrigerator < Appliance
    def chill_info
        p "This one keeps food cold."
    end
end
class Microwave < Appliance
    def heat_info
        p "This one heats food up."
    end
end
# test code
# r = Refrigerator.new
# r.show_info
# r.chill_info
# m = Microwave.new
# m.show_info
# m.heat_info
# a = Appliance.new
# a.show_info


# Problem 5: Module as Namespace
# Objective: Define a module Payments as a namespace, and within it, define two classes, Invoice and Receipt.
# Demonstrate creating instances of these classes within the Payments namespace.
module Payments
    class Invoice
        def add
            p "Invoice created."
        end
    end

    class Receipt
        def paid
            p "Invoice paid. Take your receipt."
        end
    end
end
job_one = Payments::Invoice.new
rec_one = Payments::Receipt.new
job_one.add
rec_one.paid