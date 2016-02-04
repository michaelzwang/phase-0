# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[1][2][0]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|
  if x.kind_of?(Array)
    x.map! {|y| y + 5}
  else
    x + 5
  end  
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |x|
  if x.kind_of?(Array)
    x.map! do |y|
      if y.kind_of?(Array)
        y.map! {|z| z + "ly"}
      else
        y + "ly"
      end
    end  
  else
      x + "ly"
  end
end

p startup_names



#Reflection
#What are some general rules you can apply to nested arrays?
# => I found that it was easiest to start from the outside and work my way in when counting the indices for the array.
# => Overall, just treat the nested array and one single object until you go into the nested array.

#What are some ways you can iterate over nested arrays?
# => You can iterate over nested arrays by creating a nested loop to access the nested array.

#Did you find any good new methods to implement or did you re-use one you were already familiar with? 
#What was it and why did you decide that was a good option?
# => It was useful to use the #kind_of? method to determine if the element was an array or not before trying to access it.
# => We also got more practice using #map! because we had trouble initially in making sure the method was destructive.






