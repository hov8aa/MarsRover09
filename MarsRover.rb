class MarsRovers
    #defining the directions to move the rover in clock wise direction
    DIRECTIONS = ['N','W','S','E']

    #initialize a new rover object with current coordinates
    def initialize (x,y,direction)
        @X = x
        @Y = y 
        @direction = direction
    end
end

#Now that we know, where is the rover on the grid, we need to do 2 activities here
# 1. Validate if the input is valid
    #def  Validate, what does this default method do?
    #end

# 2. Separte the into 3 parts:
#    x coordinate, y coordinate & the direction where the rover faces.
#   how to separate the user input in 3 different variables?

def get_user_input

    puts"Welcome to Mars, let's deign the game, enter the size of the grid you want to play with"
    grid = gets
    puts "I hope the playground is big enough #{grid}"

    puts "Now, assume that you have the opportunity to place the rover anywhere on this grid, where would you place the rover & facing which direction?"
    position = gets
    puts "I am assuming the position lies on the grid, #{position} (we'll check soon)"

end

get_user_input