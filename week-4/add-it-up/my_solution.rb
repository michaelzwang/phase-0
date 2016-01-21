# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array (ex: [1,2,3])
# Output: sum of the array ( ex: 6)
# Steps to solve the problem.
# -define method with input array
# -loop through array so it adds to the previous number
# -return the total sum


# 1. total initial solution

def total(array)
	sum = 0

	i = 0
	while i < array.length
		sum = sum + array[i]

	i += 1	
	end

	return sum
end


# 3. total refactored solution
def total (array)
	array.inject{|sum, x| sum + x}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: combined sentence with first letter capitalized and ends with a period. 
# Steps to solve the problem.
# - define method that takes array of strings as input
# - adds strings together
# - capitalize first letter of sentence
# - return the sentence with a period at the end


# 5. sentence_maker initial solution

def sentence_maker(array)
	sentence = array[0].capitalize.to_s

	i = 1
	while i < array.length
		sentence = sentence + " " + array[i].to_s

		i += 1
	end

	return sentence + "."
end


# 6. sentence_maker refactored solution

def sentence_maker(array)
	array.join(' ').capitalize << "."
end









