# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# What is the input?
  # Array of numbers or strings
# What is the output? (i.e. What should the code return?)
  # most frequently occurring values, in form of array
# What are the steps needed to solve the problem?
  # Create container (the hash)
  # Assign elements of the array as keys in the hash
  # Assign values based on frequency
  # Determine largest value(s)
  # Return key(s) correspoding to largest value in form of an array


# 1. Initial Solution
def mode(array)
  list = Hash.new
  array.each do |element|
    if list.has_key?(element)
      list[element] = list[element] + 1
    else
    list[element] = 1
    end
  end
  
  largest = []
  list.each do |key,value|
    if value == list.values.max
      largest << key
    end
  end
  
  return largest
end


# 3. Refactored Solution

def mode(array)
  list = Hash.new(0)
  
  array.each {|element| list[element] += 1}
  largest = []
  list.select {|keys, values| largest << keys if values == list.values.max}

  return largest
end



# 4. Reflection
#Which data structure did you and your pair decide to implement and why?
# => Decided to use a hash so we could store the array elements as keys and the occurances as values.
#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# => The same amount of success. 
#What issues/successes did you run into when translating your pseudocode to code?
# => The biggest issue initially was figuring out the right methods to increase the value for multiple occurances.
# => Also, we struggled with a way to find the largest value and return the corresponding key.
#What methods did you use to iterate through the content? 
# => We used the each method to iterate through each element in the array and then each key/value pair in the hash.
#Did you find any good ones when you were refactoring? Were they difficult to implement?
# => We tried a lot of different methods, and settled on the select method.
# => It was a little difficult to implement because we had to figure out how to convert it from a hash to an array.




