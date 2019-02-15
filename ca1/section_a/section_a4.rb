=begin
NCI Server Side Web Technologies CA1
Tutor: Liam McCabe
CA Section A - part 4 

-   Use the attr_accessor method to create a class of a vehicle with two parameters age and model.
a. If the age is less than 5 years old output a string with the model and age of the vehicle in it saying
“the Make which is Years old is now due a service.”
b. If the vehicle is greater than 5 years old output a string that says “the Make which is Years old is
now due to be scrapped.”
  

open the correct file path in the terminal and run command $ ruby section_a4.rb
eg.
ec2-user:~/environment/ca1/section_a $ ruby section_a4.rb

Created by Shane Cunningham 07/02/2019
=end

# Car class, here is where i store variables and set the methods and conditions 
class Car
    # the attr_accessor method defines the accsssor methods within the class
    # Ruby doesn't allow Instance Variables to be accessed or modified from outside of the class to encourage encapsulation
    # attr_accessor methods can write values to the Instance variables and read them back
    
    attr_accessor :age, :model, :condition  # :age, :model, :condition - Symbols: Immutable Values(Cant be changed) 
    
     # When a new Instance object of class Car [Car.new(age,model)] is called, 
     # The initialize method passes the parameters(age,model) to the new object
    def initialize(age, model)     
        @age = age                          # @age, @model... Instance variables declared
        @model = model
        
        @condition = get_vehicle_info
    end
    # define instance method and determines whether the car is above or bellow the age of 5 years
    def get_vehicle_info
        # if the age of the car is less than 5 years than service, if not ,scrap it
        if (@age < 5)                               
            return "The #{model} which is #{age} Years old is now due a service."
        end
            return "The #{model} which is #{age} Years old is now due to be scrapped."
    end
    # Make :get_vehicle_info private, private methods are called only in the context of the current object, you can't invoke another objects private methods
    private :get_vehicle_info
    

end

escort = Car.new(10, "Ford Escort")  #10 year old Ford Escort

puts escort.condition               #outputs "The Ford Escort which is 10 Years old is now due to be scrapped."

puts   # new line

polo = Car.new(4, "Volkswagon Polo")  #4 year old Volkswagon Polo

puts polo.condition                 #outputs "The Volkswagon Polo which is 4 Years old is now due a service."

puts # new line







































