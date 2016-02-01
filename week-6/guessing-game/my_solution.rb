# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer
# Output: symbol comparing input to the answer
# Steps:
# => initialize with an integer
# => define method guess
# => compare answer with guess
# => output symbol
# => define method solved?
# => TRUE, IF answer equals guess
# => FALSE, otherwise


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	if guess > @answer
  		@guess = :high
  	elsif guess == @answer
  		@guess = :correct
  	else
  		@guess = :low
  	end

  	@guess
  end

  def solved?
  	if @guess == :correct
  		true
  	else
  		false
  	end
  end

end


# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	if guess > @answer
  		@guess = :high
  	elsif guess == @answer
  		@guess = :correct
  	else
  		@guess = :low
  	end

  	@guess
  end

  def solved?
  	@guess == :correct ? true : false
  end

end


# Reflection
#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# => They are able to be called upon multiple times within the class where it was defined. 
# => This gives them a greater definition.

#When should you use instance variables? What do they do for you?
# => Instance variables are defined and accessible within a specific instance of a class.  
# => An instance variable is accessible anywhere within that instance of a class, regardless of where it is defined. 

#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => Use flow control using the if, elsif, else, end syntax. 
# => Using it was very helpful in this challenge, allowing me to output the correct symbol for my criteria.

#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => I think symbols were used because they were values that didn't need to be changed. 
# => Symbols behave similarly to strings but they are immutable and unique. 
# => This allows them to be processed faster, and using them cleans up the code because of their simplified syntax. 






