# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 character credit card number
# Output: Match or no match of number (T or F)
# Steps:
# If the number is 16 digits then proceed, ELSE raise an error
# First break the numbers into an array
# Each index will correspond to one number

# Method 1
# IF the index of the array is odd
#  THEN double the number
# ELSE do nothing to the number

# Method 2
# Split every number in the array into an array of single digits
# Add every digit in the array into the sum

# Method 3
# Divide the sum of the digits
# IF divisible by 10 THEN valid card number
# ELSE NOT valid card number



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_number)
    if card_number.to_s.length != 16
      raise ArgumentError.new("Credit card number length not valid!")
    else
      @card_number = card_number.to_s.split("")
    end
  end
  
  def double
    @double_number = []
    @card_number.each_with_index do |num, i|
      if i.even?
        @double_number << num.to_i * 2
      else
        @double_number << num.to_i
      end
    end
    return @double_number
  end
  
  def sum
    @double_number = @double_number.each {|x| x.to_s}
    @singles = @double_number.join("").split("")
    
    @total = 0
    @singles.each {|x| @total += x.to_i }
  end

  def check_card
  	double
  	sum
    if @total % 10 == 0		#our instance variables would return nil & we would get a undefined method for nilClass error
      return true  
    else
      return false
    end
  end
  
end




# Refactored Solution
class CreditCard
  
  def initialize(card_number)
    if card_number.to_s.length != 16
      raise ArgumentError.new("Credit card number length not valid!")
    else
      @card_number = card_number.to_s.split("").map! {|x| x.to_i}
    end
  end
  
  def check_card
  	double_number = []
    @card_number.each_with_index do |num, i|
      if i.even?
        double_number << num * 2
      else
        double_number << num
      end
    end

    singles = double_number.join("").split("") 
    singles.map! {|x| x.to_i}
    sum = singles.inject { |sum, n| sum + n }
    
    if sum % 10 == 0
      return true  
    else
      return false
    end
  end
end



# Reflection
#What was the most difficult part of this challenge for you and your pair?
# => The most difficult part was finding a way to get rid of an undefined method for nil class error.
# => We struggled with it for about 45 min and decided to combine the methods into one.
# => We realized something was wrong with our use of instance variables.

#What new methods did you find to help you when you refactored?
# => We used the #inject method to add the array elements together.

#What concepts or learnings were you able to solidify in this challenge?
# => I definitely learned a lot more about using instance variables.
# => Also, I got more practice modifying an array and using destructive methods.





