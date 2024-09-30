def get_user_input

    puts"Welcome to Mars, let's deign the game, enter the size of the grid you want to play with"
    grid = gets
    puts "I hope the playground is big enough #{grid}"

    puts "Now, assume that you have the opportunity to place the rover anywhere on this grid, where would you place the rover, on X coordinate?"
    rover_position_x_coordinate = gets.chomp

    puts "Now, assume that you have the opportunity to place the rover anywhere on this grid, where would you place the rover, on Y coordinate?"
    rover_position_y_coordinate = gets.chomp

    puts "I am assuming the position #{rover_position_x_coordinate} #{rover_position_y_coordinate} lies on the grid. (we'll check soon)"

    puts "Wait a second, we missed, What direction the rover is facing, East/West/North/South?"
    rover_facing_direction = gets
    rover_facing_direction = rover_facing_direction[0]
    puts "Hmm, Direction starts with #{rover_facing_direction}"
    #Now we need to get the instructions from the player for further operation
    puts "Please enter the instructions for the rover to move with 3 characters 'L','M' &'R' in any required sequence"
    #where 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot.
    #'M' means move forward one grid point, and maintain the same heading."
    movement = gets.chomp

    puts "Let me move the rover with #{movement} instructions, & give you the final position, please wait..."

    puts "I see, There are #{movement.length} instructions."

    #Now, process the instructions to move the rover
    rover_position_x_coordinate = rover_position_x_coordinate.to_f
    rover_position_y_coordinate = rover_position_y_coordinate.to_f

    i = 0
    while i <= movement.length
        instruction = movement.slice(i)
        if instruction == "L"
            puts "The current instruction is L & Current Rover direction is #{rover_facing_direction}, Turning Left"
            #To turn the rover to left direction from it's currrent position, we need to know it's current direction.
            if rover_facing_direction == "E"
                rover_facing_direction = "N"
            
            elsif rover_facing_direction == "N"
                rover_facing_direction = "W"
            
            elsif rover_facing_direction == "W"
                rover_facing_direction = "S"
            
            else rover_facing_direction == "S"
                rover_facing_direction = "E"
            end
            puts "New Rover direction is #{rover_facing_direction}"
        end

        if instruction == "R"
            puts "The current instruction is R & Current Rover direction is #{rover_facing_direction}, Turning Right"
            #To turn the rover to left direction from it's currrent position, we need to know it's current direction.
            if rover_facing_direction == "E"
                rover_facing_direction = "S"
            
            elsif rover_facing_direction == "N"
                rover_facing_direction = "E"
            
            elsif rover_facing_direction == "W"
                rover_facing_direction = "N"
            
            else rover_facing_direction == "S"
                rover_facing_direction = "W"
            end
            puts "New Rover direction is #{rover_facing_direction}"

        end

        if instruction == "M"
            puts "The current instruction is M, Moving forward"
            #to more the rover one step forward, we need to operate on the coordiates in the direction of it's face

            if rover_facing_direction == "E"
                #+1 to x coordinate
                rover_position_x_coordinate += 1
                puts "New rover position is #{rover_position_x_coordinate} #{rover_position_y_coordinate}"
            
            elsif rover_facing_direction == "N"
                #+1 to y coordinate
                rover_position_y_coordinate += 1
                puts "New rover position is #{rover_position_x_coordinate} #{rover_position_y_coordinate}"
            
            elsif rover_facing_direction == "W"
                #-1 to x coordinate
                rover_position_x_coordinate -= 1
                puts "New rover position is #{rover_position_x_coordinate} #{rover_position_y_coordinate}"
            
            else rover_facing_direction == "S"
                #-1 to y coordinate
                rover_position_y_coordinate -= 1
                puts "New rover position is #{rover_position_x_coordinate} #{rover_position_y_coordinate}"

            end

        end
        i +=1
    end
    rover_position_x_coordinate = rover_position_x_coordinate.to_i
    rover_position_y_coordinate = rover_position_y_coordinate.to_i

    puts "System just finished processing your instructions, the new coordinates of the rover are #{rover_position_x_coordinate}, #{rover_position_y_coordinate}"
    puts "Happy Rovering in an infinite world"
end

get_user_input