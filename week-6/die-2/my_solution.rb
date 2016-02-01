# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: random string from input array
# Steps:
# => create instance variable
# => raise error if array is empty
# => define sides to return length of array
# => define roll to return random string from array


# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("Array cannot be empty!") if @labels.length < 1
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end


# Refactored Solution
# => nothing to refactor

# Reflection
#What were the main differences between this die class and the last one you created in terms of implementation? 
#Did you need to change much logic to get this to work?
# => The logic was basically the same. The only difference was that the input was an array of strings.
# => The methods used had to be array methods.

#What does this exercise teach you about making code that is easily changeable or modifiable? 
# => It made me realize that small changes can be easily made if you have a good structure.

#What new methods did you learn when working on this challenge, if any?
# => none

#What concepts about classes were you able to solidify in this challenge?
# => I solidified my understanding of instance variables and using them throughout the class.






