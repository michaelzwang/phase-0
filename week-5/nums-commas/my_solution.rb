# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Any positive integer
# What is the output? (i.e. What should the code return?) A comma-separated integer as a string
# What are the steps needed to solve the problem?
	# define method that takes positive integer as input
	# convert integer to string
	# determine length of string (aka number of digits)
	# if string is three digits or less, return string as is
	# if string is greater than three digits, add comma before every three digits
	# close method


# 1. Initial Solution

def separate_comma(num)
	num_s = num.to_s
	digits = num_s.split("")

	if num_s.length <= 3
		return num_s
	elsif num_s.length <= 6
		digits.insert(-4, ",")
		return digits.join("")
	elsif num_s.length <= 9
		digits.insert(-4, ",")
		digits.insert(-8, ",")
		return digits.join("")
	end
end

# 2. Refactored Solution

def separate_comma(num)
	digits = num.to_s.split("")

	if digits.length <= 3
		digits.join("")
	else 
		digits_rev = []
		count = 0

		i = 0
		while i < digits.length
			digits_rev << digits.reverse[i]
			count += 1

			if count % 3 == 0
				digits_rev << "," 
			end

			i += 1
		end
		
		new_num = digits_rev.reverse
		
		if new_num[0] == ","
			new_num.shift
		end
		
		new_num.join("")
	end
end



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# My process for breaking the problem down was to think about the input and the output.
# Then I began to think about the most direct way to get to the output, listing them step-by-step.

# Was your pseudocode effective in helping you build a successful initial solution?
# I think pseudocoding helped me break the problem down into steps.
# When I started coding, I then started brainstorming different methods and techniques to use.

# What new Ruby method(s) did you use when refactoring your solution? 
# Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). 
# Did it/they significantly change the way your code works? If so, how?
# When refactoring, I'm not sure if my code is simpler, but I made it so that it works for any positive integer.
# I utilized the reverse method and also added a loop to iterate over the array. 
# I also used the shift method to delete an extra comma.

# How did you initially iterate through the data structure?
# I think for my initial solution, I focused on the basics and was able to pass the spec without iteration.
# When refactoring, I decided to iterate by reversing the number and adding a comma after every third digit.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I think my refactored solution is more complicated but has more functionality.
# Before, I didn't use a loop so it was only applicable to numbers up to 9 digits long.
# Now, with a loop, the method works for any positive integer, no matter the number of digits.












