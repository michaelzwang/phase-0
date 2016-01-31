# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution (Zach Barton) - Find Matching Data
def my_array_finding_method(source, thing_to_find)
  new_array = []
  source.each do |word|
    if word.to_s.include? thing_to_find.to_s
      new_array << word
    else
    end
  end
  return new_array
end

def my_hash_finding_method(source, thing_to_find)
  new_array = []
  source.each do |key, value|
    if value == thing_to_find
      new_array << key.to_s
    else
    end
  end
  return new_array
end

puts my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.

# I used the each method in both examples to iterate over an array and a hash. The difference
# between iterating over an array and a hash is that the do loop for a hash requires two arguments
# so that both the key and the values can be accessed.
# 
# To check if a string contains a certain letter or other substring, I used the .include? method
# to check if each string in the array contains the thing_to_find argument. The include method syntax
# looks like this: string.include? "substring" and will return true if the string contains the substring.
#
# Finally, I used the .to_s method to explicitly change the variables into strings before returning
# them out of the method.
#
# For searching through the ruby documentation, I just looked for the page corresponding to the class
# I wanted to apply a method to (string, hash, array, etc.) and searched the page for a method that
# sounded similar to function I wanted to perform.

# Person 2 (Michael Wang) - Modify Existing Data
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |element|
    if element.is_a? Integer
      element + thing_to_modify
    else
      element
    end
  end
  return source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |k, v| source[k] = v + thing_to_modify}
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# => map! to replace the element in the array with the value returned by the block; this let's you change the input array directly
# => is_a? to determine if element in array is an integer. This makes sure that you are only modifying the integers in the array.
# => each to modify each value of the hash, since all the values in the hash are already integers, you don't need the is_a? method


# Person 3 (Bobby Reith)- Sort Data
def my_array_sorting_method(i_want_pets)
	i_want_pets.sort { |a, b| a.to_s <=> b.to_s }
end

def my_hash_sorting_method (my_family_pets_ages)
	my_family_pets_ages.sort_by { |name,age| age }
end

# Identify and describe the Ruby method(s) you implemented.
# For the array the .sort method was used adding a block which compared each value to one another. 
# Within the block the .to_s method was used so when the values were compared, it was comparing a 
# string to a string. The sort method returns an array.
#
# For the hash the .sort_by method was used adding a block which took the key(name) and value(age) as
# the arguments and sorted by the value(age). The sort_by method returns an array.
#
# The research was fairly straight forward for the sort methods. Once I reviewed the challenge, I was
# able to go into the Ruby Docs and find the methods needed in the array and hash sections. After looking
# over what each method did in detail, I was able to implement them in the challenge successfully. 


# Person 4 (Bethelhem Assefa) - Delete Matching Data
def my_array_deletion_method!(i_want_pets, letter)
  i_want_pets.delete_if { |item| item.to_s.include?(letter) }
end
my_array_deletion_method!(i_want_pets,"a")
p i_want_pets

def my_hash_deletion_method!(my_family_pets_ages, name)
  my_family_pets_ages.delete_if { |pet,age| pet.include?(name) }
end
my_hash_deletion_method!(my_family_pets_ages, "George")
p my_family_pets_ages

# Identify and describe the Ruby method(s) you implemented.
# I used a delete_if method because it deletes every element of self for which block evaluates to true. Meaning that
# for my_array_deletion_method! it deletes all the string that contains the letter provided and
# for my_hash_deletion_method! it deletes the item that is equal to the name argument.

# Teach your accountability group how to use the methods
# The method is pretty forward to use. there are 3 options to use a delete-method in an array.
#  .delete : which deletes all items from the array that are equal to obj.
#      forexample : array=["a","b","c"] and if we use array.delete("b") the method will remove "b" from the array.
#  .delete_at : in this one we need to provide the index number where we want to delete item. so it will go ahead and remove it from the array.
#     using the previous example delete_at(1) removes "b" since it is located on index 1
#  .delete_if is the third option and which i used for this exercise. since our i_want_pets array contains numbers, make sure to change the item.to_s other wise, you will encounter an error message.



# Person 5 (Mauve Tierney) - Split Data

def my_array_splitting_method(i_want_pets)
  first_array=[]
  second_array=[]
  
  first_array = i_want_pets.select{ |x| x.is_a? Integer}           

  second_array = i_want_pets.select{ |x| x.is_a? String}

  return Array[first_array, second_array]
 
end

def my_hash_splitting_method(my_family_pets_ages, age)
  young_dogs = {}
  old_dogs = {}

  young_dogs = my_family_pets_ages.select{ |name, age| age <= 4 }

  old_dogs = my_family_pets_ages.select{ |name, age| age > 4 }

  return dogs = [young_dogs.to_a, old_dogs.to_a]

end

# Then create a my_hash_splitting_method that will separate the 
# hash into two arrays based on the value. It should return two arrays,
#  the first which includes all pets who are four years of age or younger 
#  and the second that includes all other pets. This should not alter 
#  the original data structure.
# my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12,
# "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}




# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# => Through teaching my group members about the methods I used, I was able to get a better understanding of them myself.
# => I had to make sure I truly understood the methods before I was able to offer any explanations.
# => It was also interesting to see how my group members approached their problems to see which new methods they used.
#