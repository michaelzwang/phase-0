# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# => input: none
# => output: random letter (b, i, n, g, o) and random number (1-100)
# => define method
# => pick random letter (b, i, n, g, o)
# => pick random number (1-100)
# => concatenate letter and number together as strings

# Check the called column for the number called.
# => input: letter, number
# => output: true if number matches, else false
# => assign positions in array to each letter
# => iterate through the array corresponding to the input letter
# => true if the number matches

# If the number is in the column, replace with an 'x'
# => input: true / false
# => output: board with x replacing number if true, or board if false
# => if true, replace number with 'x'
# => display board

# Display a column to the console
# => input: letter (b, i, n, g, o)
# => output: array of numbers in the column
# => assign letters to column
# => create new array of the numbers in correct column/index
# => return new array

# Display the board to the console (prettily)
# => input: board
# => output: board with style
# => create labels to the top corresponding to the letters(b, i, n, g, o)
# => create lines separating columns & rows
# => print to board to screen

# Initial Solution

class BingoBoard
  attr_accessor :letter, :number

  def initialize(board)
    @bingo_board = board
  end

  def call_number
    @letter = ["B", "I", "N", "G", "O"].sample
    @number = rand(1..100)

    puts @letter + ":" + @number.to_s
  end
    
  def check
    b_column = []
    i_column = []
    n_column = []
    g_column = []
    o_column = []

    @bingo_board.each_with_index {|row, i| b_column << row[0]}
    @bingo_board.each_with_index {|row, i| i_column << row[1]}
    @bingo_board.each_with_index {|row, i| n_column << row[2]}
    @bingo_board.each_with_index {|row, i| g_column << row[3]}
    @bingo_board.each_with_index {|row, i| o_column << row[4]}

    case @letter
    when "B"
      if b_column.include?(@number)
        num_index = b_column.index(@number)
        @bingo_board[num_index][0] = "X"
        p @print_board
      end
    when "I"
      if i_column.include?(@number)
        num_index = i_column.index(@number)
        @bingo_board[num_index][1] = "X"
        p @bingo_board
      end
    when "N"
      if n_column.include?(@number)
        num_index = n_column.index(@number)
        @bingo_board[num_index][2] = "X"
        p @bingo_board
      end
    when "G"
      if g_column.include?(@number)
        num_index = g_column.index(@number)
        @bingo_board[num_index][3] = "X"
        p @bingo_board
      end
    when "O"
      if o_column.include?(@number)
        num_index = o_column.index(@number)
        @bingo_board[num_index][4] = "X"
        p @bingo_board
      end
    else
      p @bingo_board
    end
  end

  def print_board
    puts "-------------------------------"
    puts " |B|   |I|   |N|   |G|   |O|"
    puts "-------------------------------"
    @bingo_board[0].each {|num| print  " |" + num.to_s + "| "}
    puts 
    puts "-------------------------------"
    @bingo_board[1].each {|num| print " |" + num.to_s + "| "}
    puts 
    puts "-------------------------------"
    @bingo_board[2].each {|num| print " |" + num.to_s + "| "}
    puts 
    puts "-------------------------------"
    @bingo_board[3].each {|num| print " |" + num.to_s + "| "}
    puts 
    puts "-------------------------------"
    @bingo_board[4].each {|num| print " |" + num.to_s + "| "}
    puts 
    puts "-------------------------------"
  end

end



# Refactored Solution
class BingoBoard
  attr_accessor :letter, :number

  def initialize(board)
    @bingo_board = board
  end

  def call_number
    @letter = ["B", "I", "N", "G", "O"].sample
    case @letter
    when "B"
      @number = rand(1..15)
    when "I"
      @number = rand(16..30)
    when "N"
      @number = rand(31..45)
    when "G"
      @number = rand(46..60)
    when "O"
      @number = rand(61..75)
    end
    puts @letter + ":" + @number.to_s
  end
    
  def check
    if @bingo_board[0].include?(@number)
        puts "You have the number!"
        num_index = @bingo_board[0].index(@number)
        @bingo_board[0][num_index] = "X"
    elsif @bingo_board[1].include?(@number)
        puts "You have the number!"
        num_index = @bingo_board[1].index(@number)
        @bingo_board[1][num_index] = "X"
    elsif @bingo_board[2].include?(@number)
        puts "You have the number!"
        num_index = @bingo_board[2].index(@number)
        @bingo_board[2][num_index] = "X"
    elsif @bingo_board[3].include?(@number)
        puts "You have the number!"
        num_index = @bingo_board[3].index(@number)
        @bingo_board[3][num_index] = "X"
    elsif @bingo_board[4].include?(@number)
        puts "You have the number!"
        num_index = @bingo_board[4].index(@number)
        @bingo_board[4][num_index] = "X"
    else
      puts "You don't have the number :("
    end
    puts print_board
  end

  def print_board
    puts "-------------------------"
    puts "  B   I    N    G    O"
    puts "-------------------------"
    @bingo_board[0].each {|num| print num.to_s.center 5}
    puts 
    puts "-------------------------"
    @bingo_board[1].each {|num| print num.to_s.center 5}
    puts 
    puts "-------------------------"
    @bingo_board[2].each {|num| print num.to_s.center 5}
    puts 
    puts "-------------------------"
    @bingo_board[3].each {|num| print num.to_s.center 5}
    puts 
    puts "-------------------------"
    @bingo_board[4].each {|num| print num.to_s.center 5}
    puts 
    puts "-------------------------"
  end

  def new_board
    @bingo_board = Array.new(5) {Array.new(5)}
    @bingo_board[0] = (1..15).to_a.sample(5)
    @bingo_board[1] = (16..30).to_a.sample(5)
    @bingo_board[2] = (31..45).to_a.sample(5)
    @bingo_board[3] = (46..60).to_a.sample(5)
    @bingo_board[4] = (61..75).to_a.sample(5)

    @bingo_board = @bingo_board.transpose
    @bingo_board[2][2] = "X"
    
    puts "Here is your new board:"
    puts print_board
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call_number
new_game.check

new_game.new_board
new_game.call_number
new_game.check



#Reflection
#How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => Pseudocoding really helped me break the challenge up into smaller portions. 
# => From there, I was able to focus on one desired result at a time. 
# => For me, it is hard to avoid using code language while pseudocoding.

#What are the benefits of using a class for this challenge?
# => Using a class allows us to take advantage of instance variables.

#How can you access coordinates in a nested array?
# => You can access them like this: array[row][column]. 
# => Each nested array has an index and within each nested array, the elements have their own index as well.

#What methods did you use to access and modify the array?
# => I mainly used the #each method to modify the array (in my initial solution). 
# => Besides #each, I directly accessed the nested arrays using the [][]

#Give an example of a new method you learned while reviewing the Ruby docs. 
#Based on what you see in the docs, what purpose does it serve, and how is it called?
# => I used the #index method to determine which index the called number was at.
# => I learned how to create nested arrays with Array.new(){Array.new()}. This allowed me to create a new board!
# => I found the #center method to use on the string to style my bingo board.
# => I also used #sample to make sure to not repeat any numbers for the new board
# => And I used #transpose to flip the rows and columns.

#How did you determine what should be an instance variable versus a local variable?
# => I used instance variables if I wanted to call the same variable somewhere else in the class
# => I used local variables when it was only necessary to use them in the one method where it was defined.

#What do you feel is most improved in your refactored solution?
# => Because the legal bingo board doesn't have any repeated numbers, I was able to simplify the check method.
# => I think this is only valid fot the legal board. If there are repeats of numbers for different letters, I would need to check them the letter columns by using the #transpose method.

