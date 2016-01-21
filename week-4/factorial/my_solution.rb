# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  if number == 0
  	return 1
  end

  result = number
  i = 1
  while i < number
  	result = result* i
  	i += 1
  end

  return result
end