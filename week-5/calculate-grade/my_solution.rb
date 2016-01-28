#Create a method get_grade that accepts an Array of test scores. 
#Each score in the array should be between 0 and 100, where 100 is the max score.

#Compute the average score and return the letter grade as a String, i.e., 'A', 'B', 'C', 'D', or 'F'.

#For example:
#get_grade([100, 100, 100]) # => 'A'


def get_grade(array)
	avg = array.inject(:+) / array.length

	if avg >= 90
		"A"
	elsif avg >= 80
		"B"
	elsif avg >= 70
		"C"
	elsif avg >=60
		"D"
	else
		"F"
	end
end
