# PSEUDOCODE
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create new hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash with item and default quantity

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # add item into hash
  # if quantity given, add to hash over default quantity
# output: update hash with items and new quantity

# Method to remove an item from the list
# input: item name that we want to remove
# steps:
  # delete item from hash
# output: updated hash with newely removed items

# Method to update the quantity of an item
# input: name of the item & new quantity
# steps:
  # change quantity from old to new
# output: updated hash with new quantity

# Method to print a list and make it look pretty
# input: hash
# steps:
  # style output of hash
  # print out hash
# output: hash with style

def create_list(items)
  new_list = Hash.new(1)
  items.split.each do |item|
    new_list[item] = 1
  end
  new_list
end

def add_item(new_list, item, quantity=1)  
  new_list[item] = quantity
  new_list
end

def remove_item(new_list, item)
  new_list.delete(item)
  new_list
end

def change_quantity(new_list, item, quantity)
  new_list[item] = quantity
  new_list
end

def print_list (new_list)
  new_list.each do |item, quantity|
    puts "Item: " + item.to_s.capitalize + " - " + quantity.to_s
  end
end

#REFLECTION
#What did you learn about pseudocode from working on this challenge?
# => I learned that pseudocode helps with organizing your thoughts before coding.
#What are the tradeoffs of using Arrays and Hashes for this challenge?
# => Hashes works better because there was a key/value pair with the item & quantity.
#What does a method return?
# => a method doesn't return anything (nil) unless you specifically tell it to return something else.
#What kind of things can you pass into methods as arguments?
# => you can pass strings, numbers, or even other methods
#How can you pass information between methods?
# => by passing a method as an argument 
#What concepts were solidified in this challenge, and what concepts are still confusing?
# => I learned more about defining methods and passing methods as an arguement,
# => I also got more practice working with hashes.





