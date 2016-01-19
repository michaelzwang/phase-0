#Full name greeting

puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Hello " + first_name + " " + middle_name + " " + last_name + "!"


#Bigger, better favorite number

puts "What is your favorite number?"
num = gets.chomp
new_num = num.to_i + 1

puts "Hmm... " + new_num.to_s + " is a bigger and better number!"

# https://github.com/michaelzwang/phase-0/blob/master/week-4/address/my_solution.rb
# https://github.com/michaelzwang/phase-0/blob/master/week-4/math/my_solution.rb

=begin
How do you define a local variable?
Define a local variable by creating variable name and setting it equal to something.
ex: num = 2

How do you define a method?
ex: def new_method(parameter)
	end

What is the difference between a local variable and a method?
A local variable is an object. A method takes a variable and produces some kind of outcome/result.

How do you run a ruby program from the command line?
call ruby your_program.rb

How do you run an RSpec file from the command line?
call rspec rspec_file.rb

What was confusing about this material? What made sense?
It was pretty straightforward!

=end