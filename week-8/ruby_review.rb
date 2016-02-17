# Create a Car Class from User Stories

# Solution

class Car
	attr_accessor :model, :color

	def initialize(model, color)
		@model = model
		@color = color
		@total_distance = 0

		puts "You are driving a #{@color} #{@model}!"
	end

	def current_distance(distance)
		@distance = distance
		puts "You are currently driving #{@distance} miles."

		@total_distance += distance
		#puts "You have driven a total of #{@total_distance} miles."
	end

	def turn(direction)
		if direction == "left"
			puts "You turned left."
		elsif direction == "right"
			puts "You turned right."
		end
	end

	def current_speed
		puts "You are driving at #{@speed} mph."
	end

	def change_speed(speed_limit)
		@speed = speed_limit
		puts "You are driving at the speed limit of #{@speed} mph."
	end

	def stop
		@speed = 0
		puts "You stopped. Your speed is 0 mph."
	end

	def total_distance
		puts "The total distance driven today was #{@total_distance} miles."
	end

	def pizza
		pizza_delivery = Pizza.new
		pizza_delivery.pizza_type
	end

	def delivered
		puts "You delivered the pizza. The customer is happy!"
	end

end

class Pizza
	attr_accessor :size, :topping, :crust

	def initialize
		@size = ["small", "medium", "large"].sample
		@topping = ["pepporoni", "cheese", "mushrooms"].sample
		@crust = ["cheese-stuffed","gluten-free","regular"].sample
	end

	def pizza_type
		puts "The pizza to be delivered is a #{@size} pizza with #{@topping} and a #{@crust} crust."
	end

end

# DRIVER TESTS GO BELOW THIS LINE
delivery = Car.new("Mercedes", "black")
p delivery.model
p delivery.color

delivery.pizza

delivery.current_distance(0.25)
delivery.change_speed(25)

delivery.stop
delivery.turn("right")

delivery.current_distance(1.5)
delivery.change_speed(35)

delivery.current_speed
delivery.change_speed(15)

delivery.current_distance(0.25)
delivery.stop
delivery.turn("left")

delivery.current_distance(1.4)
delivery.change_speed(35)
delivery.stop

delivery.delivered

delivery.total_distance




# Reflection

# What concepts did you review or learn in this challenge?
# => Reviewed Ruby classes and creating driver test code.
# => This was the first time I had two classes interact with each other. I was confused on how to do this at first but figured it out after some trial and error.

# What is still confusing to you about Ruby?
# => Overall, I feel like I understand Ruby. 
# => It can be difficult when I get really stuck to figure out a solution. I don't like to take breaks but sometimes they really help.

# What are you going to study to get more prepared for Phase 1?
# => I am going to just study more methods to get familiar with different ways to approach problems.
# => I am also going to review past challenges and see if I can approach them in different ways or refactor my previous code further. 




