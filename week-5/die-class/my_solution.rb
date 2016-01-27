# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: random number from available sides
# Steps:
# => create a Die class
# => create a new die with x number of sides
# => IF number of sides is less than 1, raise argument error
# => create method sides that returns x
# => create method roll that returns random number between 1 and x


# 1. Initial Solution

class Die
  def initialize(sides)
  	@sides = sides
  	if @sides < 1
  		raise ArgumentError.new("Number of sides must be greater than zero")
  	end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
  	@sides = sides
  	raise ArgumentError.new("Number of sides must be greater than zero") if @sides < 1
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end


# 4. Reflection
#What is an ArgumentError and why would you use one?
# => An ArguementError is and error raised when something is wrong with the argument being passed.
# => It should be used when passing the wrong number of arguments or an argument passed is unacceptable.
#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => I used the rand method to generate a random number.
#What is a Ruby class?
# => A Ruby class is the blueprint for which objects can be created.
#Why would you use a Ruby class?
# => You would use a Ruby class in order to organize your methods and variables.
#What is the difference between a local variable and an instance variable?
# => A local variable is only used within the scope of the method where it is defined. 
# => An instance variable is available across methods for the particular instance/object.
#Where can an instance variable be used?
# => An instance variable can be used outside the method where it was defined as long as it refers to the same object.



