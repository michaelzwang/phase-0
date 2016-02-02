#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: no input, defining class
# Output: no output, defining class
# Steps:
# => initialize name variable 
# => define method to display salutation to console

class NameData
	attr_accessor :name

	def initialize
		@name = "Michael Wang"
	end
end


class Greetings
	def initialize
		@namedata = NameData.new
	end

	def hello
		puts "Hello #{@namedata.name}!"
	end
end

greet = Greetings.new
greet.hello



# Reflection
###Release 1 & 2
#What changed between the last release and this release?
# => deleted the what_is_age method and added attr_reader :age; called method #.age
#What was replaced?
# => the what_is_age method is replaced
#Is this code simpler than the last?
# => yes! one less method to define

###Release 2 & 3
#What changed between the last release and this release?
# => deleted change_my_age= method and added attr_writer :age; directly change the age without the change_my_age= method
#What was replaced?
# => the change_my_age= method is replaced
#Is this code simpler than the last?
# => yes! one less method to define

#What is a reader method?
# => returns a value or state outside of the class, but doesn't change it
#What is a writer method?
# => can change the value of a variable outside of the class, but it isn't readable
#What do the attr methods do for you?
# => they assign symbols as reader/writer/both methods
#Should you always use an accessor to cover your bases? Why or why not?
# => no because it could lead to difficult debugging problems down the line or it could compromise the security of your data 
#What is confusing to you about these methods?
# => it was initially confusing to send data between two classes, but after playing around with it, it made more sense to me


