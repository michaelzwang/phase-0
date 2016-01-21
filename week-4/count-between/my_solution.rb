# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if list_of_integers.length < 1 || upper_bound < lower_bound
  	return 0
  end

  count = 0
  i = 0
  while i < list_of_integers.length
  	if lower_bound <= list_of_integers[i] && list_of_integers[i]<= upper_bound
  		count += 1
  	end
  	i += 1
  end

  return count
end