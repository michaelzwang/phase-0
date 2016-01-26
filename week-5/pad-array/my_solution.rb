# Pad an Array

# I worked on this challenge [ with: Ian Thorpe]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? (non-destructive)
#   array, length of array, padding object
# What is the output? (i.e. What should the code return?)
#   new array with padding
# What are the steps needed to solve the problem?
#   check original array vs padded size
#   create new array equal to original
#   IF correct, do nothing
#  ELSE, add padding to end of new array
#  RETURN new_array

# What is the input? (destructive)
#   array, length of array, padding object
# What is the output? (i.e. What should the code return?)
#  modified original array with padding
# What are the steps needed to solve the problem?
#  check array vs padded size
#  IF correct, do nothing
#  ELSE, add padding to end of original array
#  RETURN modified original array with padding


# 1. Initial Solution

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  i = 0
  while i < array.length
  	new_array << array[i]
  	i += 1
  end

  if array.length < min_size 
    (min_size - array.length).times do 
    new_array << value
    end
  end
  return new_array
end

def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    (min_size - array.length).times do
      array << value
    end
  end
  return array
end

# 3. Refactored Solution

def pad(array, min_size, value = nil) 
	new_array = Array.new(array)
	
	difference = min_size - array.length

  	difference.times {new_array << value}
   
  	return new_array
end

def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length

  difference.times {array << value}
   
  return array
end

# 4. Reflection
#Were you successful in breaking the problem down into small steps?
# => Yes we were successful in breaking the problem down into small steps. It helped to talk it out and go step by step.
#Once you had written your pseudocode, were you able to easily translate it into code? 
#What difficulties and successes did you have?
# => After writing the pseudocode, we were able to pretty easily translate it into code.
# => To us, all the code was logical and made sense.
#Was your initial solution successful at passing the tests? If so, why do you think that is? 
#If not, what were the errors you encountered and what did you do to resolve them?
# => The major error we had difficulty passing was that our non-destructive method was actually destructive.
# => It took us awhile to figure out how to create a copy of the original array.
#When you refactored, did you find any existing methods in Ruby to clean up your code?
# => We realized we could get rid of the IF statement and also clean up the times method.
# => Also, we utilized Array.new to create our new array.
#How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think our solutions are very readable!
#What is the difference between destructive and non-destructive methods in your own words?
# => a destructive method is a method that modifies and returns the original object 
# => a non-destructive method is a method that modifies and returns a new object, leaving the original object the same.










