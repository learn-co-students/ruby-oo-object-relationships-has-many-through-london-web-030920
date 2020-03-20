class Customer
  
    @@all = []
    attr_accessor :name, :age
def initialize(name, age)
    @name = name
    @age = age
    @@all << self 
end

def self.all
    @@all
end 

def new_meal(waiter, total, tip = 0)
Meal.new(waiter, self, total, tip)
 end 
 
 def meals 
    Meal.all.select {|customer|customer.customer == self}
 end 
 def waiters
 meals.map{|meal|meal.waiter}
end 


end