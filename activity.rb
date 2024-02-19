# Problem 1:
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

# Problem 2:
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

# Problem 3:
class User
    attr_writer :username
    def name=(name)
        raise ArgumentError, "Name cannot be empty" if name.to_s.strip.empty?
        @name = name
    end
end

# Problem 4:
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

# Problem 5:
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


# Problem 6:
module Drivable
    def drive(vehicle)
        p "#{vehicle} in drive."
    end
end

class Car
    include Drivable
end

class Truck
include Drivable
end

# Problem 7:
class Writer
    def create
        p "A book has been created."
    end
end
class Painter
    def create
        p "A painting has been created."
    end
end



# Problem 8:
class BankAccount
    def deposit(amount)
        log_transaction(amount)
        p "#{amount} deposited."
    end
    def withdraw(amount)
        log_transaction( -amount)
        p "#{amount} withdrawn."
    end
    private

    def log_transaction(transaction)
        p "Transaction logged"
    end
end


# Problem 9:
class Camera
    attr_accessor :status
    def initialize(status="off")
        @status = status
    end
    def turn_off
        @status = "off"
        p "The camera is #{self.status}."
    end
    def turn_on
        @status = "on"
        p "The camera is #{self.status}."
    end

end


# Problem 10:
class Quiz
      [:math, :history].each do |method_name|
        define_method(method_name) do |name|
            puts "#{method_name.capitalize} question about #{name}:"
        end
      end    
end

#Problem 1 test code
pc = Laptop.new('lenovo', 'ideapad')
p pc.brand, pc.model

#Problem 2 test code
g = Gadget.new('phone')
p g.name
g.price = 40
p g.inspect


#Problem 3 test code
fitz = User.new
fitz.name = ""  #raise error message
p fitz.inspect
fitz.name = "fitz"
p fitz.inspect


#Problem 4 test code
r = Refrigerator.new
r.show_info
r.chill_info
m = Microwave.new
m.show_info
m.heat_info
a = Appliance.new
a.show_info


#Problem 5 test case
job_one.add
rec_one.paid

#Problem 6 test code
kia = Car.new
kia.drive("Kia")
chevy = Truck.new
chevy.drive("Chevy")


# Problem 7 test code
artists = []
artists.push(hemingway = Writer.new)
artists.push(herbert = Writer.new)
artists.push(adams = Writer.new)
artists.push(monet = Painter.new)
artists.push(davinci = Painter.new)
artists.push(picasso = Painter.new)
artists.each do |a|
    a.create
end

# Problem 8 test code
checking = BankAccount.new
checking.deposit(100)
checking.withdraw(20)
begin
    checking.log_transaction(20)
rescue
    p "You cannot access this method from outside the class."
end

# Problem 9 test code
c = Camera.new
p c
c.turn_on
c.turn_off

# Problem 10 test code
exam = Quiz.new
exam.math("integration")
exam.history("Spain")
