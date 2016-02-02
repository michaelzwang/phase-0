# Your Names
# 1) Michael Wang
# 2) Zach Barton

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#  error_counter = 3

  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #library.each do |food|
  #  if library[food] != library[item_to_make]
  #    error_counter += -1
  #  end
  # end

  #if error_counter > 0
  #  raise ArgumentError.new("#{item_to_make} is not a valid input")
  #end
  
  #checking to see if item_to_make is in library hash, raise error if not

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  
  #calculate remainder of ingredients

 # case remaining_ingredients
 #when 0
  if remaining_ingredients != 0
    suggested_items = []
    remaining = remaining_ingredients
    library = library.sort_by { |food, ingredients| ingredients }
    library = library.reverse.to_h
    library.each do |food, ingredients|
      new_item = remaining_ingredients / ingredients
      suggested_items << [food, new_item]
      
      remaining_ingredients = remaining_ingredients % ingredients
      
    end
    
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining} leftover ingredients. Suggested baking items: #{suggested_items}"
    
    #iterate through hash using remainder
    
  else  
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  end
  
  #return number of servings of item we can create, and if there is a remainder, suggest other items to make with ingredients
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
print serving_size_calc("pie", 13)

#p serving_size_calc("THIS IS AN ERROR", 5)

# people.sort_by { |name, age| age }
  # => [[:joan, 18], [:fred, 23], [:pete, 54]]

#  Reflection
#What did you learn about making code readable by working on this challenge?
# => I learned that sometimes weird looking code can work but not really make sense (the error counter loop)
# => It was nice to look at code and talk through it to come up with a better solution.

#Did you learn any new methods? What did you learn about them?
# => Did not use any new methods.

#What did you learn about accessing data in hashes? 
# => I learned that there are multiple ways to access data, some more complicated than others.

#What concepts were solidified when working through this challenge?
# => I definitely learned more about using hashes and accessinng the date within them. 
# => I also practiced writing loops and using modulus and remainders. 




