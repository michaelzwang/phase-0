# OO Basics: Student


# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
  	@avg = @scores.inject(:+) / @scores.length
  	return @avg
  end

  def letter_grade
  	if @avg >= 90
  		'A'
  	elsif @avg >= 80
  		'B'
  	elsif @avg >= 70
  		'C'
	elsif @avg >= 60
  		'D'
	else
  		'F'
	end	
  end

end

alex = Student.new("Alex", [100,100,100,0,100])
students=[]
students << alex

def linear_search(array, name)
	i = 0
	while i < array.length
		if array[i].first_name == name
			return i
		end

		return -1
		i += 1
	end
end



# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1



# Reflection
# What concepts did you review in this challenge?
# => Reviewed classes and instance variables.

# What is still confusing to you about Ruby?
# => I understand the main concepts but get stuck when refactoring.

# What are you going to study to get more prepared for Phase 1?
# => I will study Ruby methods and objects.






