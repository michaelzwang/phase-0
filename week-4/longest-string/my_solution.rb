# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  if list_of_words.length < 1
  	return nil
  end

  longest = list_of_words[0]
  i = 1
  while i < list_of_words.length
  	if list_of_words[i].length > longest.length
  		longest = list_of_words[i]
  	end
  	i += 1
  end

  return longest
end