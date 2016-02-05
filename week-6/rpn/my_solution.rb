# Implement a Reverse Polish Notation Calculator

#calc = RPNCalculator.new

#calc.evaluate('1 2 +')   # => 3
#calc.evaluate('2 5 *')   # => 10
#calc.evaluate('50 20 -') # => 30

# The general rule is that 'A B op' is the same as 'A op B'
# i.e., 5 4 - is 5 - 4.
#calc.evaluate('70 10 4 + 5 * -') # => 0


class RPNCalculator
  
	def evaluate(string)
  		array = string.split(" ") #.reverse

  		if array.length == 1
  			return array[0].to_i
  		end

		working = []

		i = 0
		while i < array.length
			if (array[i] != '+') && (array[i] !='-') && (array[i] != '*')
				working << array[i].to_i
			elsif array[i] == '+'
				current_num = working.pop(2).inject(:+)
				working << current_num
			elsif array[i] == '-'
				current_num = working.pop(2).inject(:-)
				working << current_num
			elsif array[i] == '*'
				current_num = working.pop(2).inject(:*)
				working << current_num
			end
			i += 1
		end

	return working.pop
	end
end

calc = RPNCalculator.new
p calc.evaluate('1 2 3 4 + + + +')
p calc.evaluate('1 2 + 3 4 + *')
p calc.evaluate('20 10 5 4 + * -')


#   Initial solution that works for basic examples only ('1 2 +')
#  	value = 0
#  	i = 0
#  	while i < array.length
#  		if array[i] == "+"
#  			value = (array[i+1].to_i + array[i+2].to_i)
#  		elsif array[i] == "-"
#  			value = (array[i+2].to_i - array[i+1].to_i)
#  		elsif array[i] == "*"
#  			value = (array[i+1].to_i * array[i+2].to_i)
#  		else

#  		end

#  		i += 1
#  	end
#  	return value


