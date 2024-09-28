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
    #def Validate
        #what does this default method do?
    #end
    #Learning to validate an input
#   After a break, I am realizing that, the validation part need to be a second priority.

#   Following code should create a new MarsRovers object with given variables
#marsrover = MarsRovers.new (rover_position_x_coordinate,rover_position_y_coordinate,rover_facing_direction)

#puts "The System figured that the original position of the rover is: #{@x}, #{@y} & is facing #{@direction} direction"

def get_user_input

    puts"Welcome to Mars, let's deign the game, enter the size of the grid you want to play with"
    grid = gets
    puts "I hope the playground is big enough #{grid}"

    puts "Now, assume that you have the opportunity to place the rover anywhere on this grid, where would you place the rover, on X coordinate?"
    rover_position_x_coordinate = gets.chomp

    puts "Now, assume that you have the opportunity to place the rover anywhere on this grid, where would you place the rover, on Y coordinate?"
    rover_position_y_coordinate = gets.chomp

    puts "I am assuming the position lies on the grid, #{rover_position_x_coordinate},#{rover_position_y_coordinate} (we'll check soon)"

    puts "Wait a second, we missed, What direction the rover is facing, East/West/North/South?"
    rover_facing_direction = gets
    rover_facing_direction = rover_facing_direction[0]
    puts "Direction starts with #{rover_facing_direction}"

end

get_user_input