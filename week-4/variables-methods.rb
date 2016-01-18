puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Hello " + first_name + " " + middle_name + " " + last_name + "!"



puts "What is your favorite number?"
num = gets.chomp
new_num = num.to_i + 1

puts "Hmm... " + new_num + " is a bigger and better number!"
