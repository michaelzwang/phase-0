#Write a method median which takes an Array of numbers as its input and returns the median value.
#You might want to look up the definition of "median."

#For example:

#median([1,2,3])      # => 2
#median([4.5, 0, -1]) # => 0
#median([-100, 100])  # => 0.0
#Once you get the Array of numbers passing the tests, try to find the median of an array of strings. 
#In this case, your method should return the word between the other words alphabetically.

#median(["apple","cherry","banana"])      # => "banana"


def median(array)
	sorted = array.sort
	length = array.length
	middle = sorted[length/2]

	if length.odd?
		middle
	else
		(middle + (middle - 1))/2.0
	end
end

