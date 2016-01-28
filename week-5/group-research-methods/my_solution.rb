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


# Person 3 - Sort Data
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


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



# Person 5 - Split Data
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#