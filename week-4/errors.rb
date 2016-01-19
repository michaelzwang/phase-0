# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
#  while true
    puts "What's there to hate about #{thing}?"
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The error is occuring in the errors.rb file
# 2. What is the line number where the error occurs?
# => The error occurs on line 170
# 3. What is the type of error message?
# => This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# => It expect the "keyword_end"
# 5. Where is the error in the code?
# => At the end of the file.
# 6. Why did the interpreter give you this error?
# => A while loop must end with the word "end"

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => line 35
# 2. What is the type of error message?
# => name error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method for main object
# 4. Where is the error in the code?
# => after the "south_park"
# 5. Why did the interpreter give you this error?
# => the variable "south_park" needs to be defined

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => line 50
# 2. What is the type of error message?
# => No Method error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method for main object
# 4. Where is the error in the code?
# => after "cartman()"
# 5. Why did the interpreter give you this error?
# => the method "cartman()" needs to be defined

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => line 65
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => after "cartmans_phrase"
# 5. Why did the interpreter give you this error?
# => on line 69 there was one argument passed through when calling the method, but when the method was defined, it was defined to take no arguments

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

#cartman_says

# 1. What is the line number where the error occurs?
# => line 84
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => after "cartman_says"
# 5. Why did the interpreter give you this error?
# => defined the method to take one argument but called the method on line 88 with zero arguments



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => line 105
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => after "cartmans_lie"
# 5. Why did the interpreter give you this error?
# => defined the method to take two arguments but called method using only one argument

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => line 124
# 2. What is the type of error message?
# => type error
# 3. What additional information does the interpreter provide about this type of error?
# => string can't be coerced into fixnum
# 4. Where is the error in the code?
# => the "*"
# 5. Why did the interpreter give you this error?
# => you can't multiply an integer by a string. 

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => line 139
# 2. What is the type of error message?
# => zero division error
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => "20/0"
# 5. Why did the interpreter give you this error?
# => you cannot divide by zero

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => line 155
# 2. What is the type of error message?
# => load error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file
# 4. Where is the error in the code?
# => "carmans_essay.md"
# 5. Why did the interpreter give you this error?
# => this file doesn't exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
# => The syntax error from not closing the while loop

#How did you figure out what the issue with the error was?
# => by looking up the proper loop syntax

#Were you able to determine why each error message happened based on the code? 
# => yes, thanks to the instructions!

#When you encounter errors in your future code, what process will you follow to help you debug?
# => To look at the line where the error is found and to use the information the error message gives to figure out what caused the error.
# => From there, I can look up more about the error if it's not a simple fix/typo.







