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
    puts "Hmm, Direction starts with #{rover_facing_direction}"
    #Now we need to get the instructions from the player for further operation
    puts "Please enter the instructions for the rover to move with 3 characters 'L','M' &'R' in any required sequence"
    #where 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot.
    #'M' means move forward one grid point, and maintain the same heading."
    movement = gets.chomp

    puts "Let me move the rover with #{movement} instructions, & give you the final position, please wait..."

    puts "I see, There are #{movement.length} instructions."

    #Now, process the instructions to move the rover
    i = 0
    while i <= movement.length
        instruction = movement.slice(i)
        if instruction == "L"
            puts "The current instruction is L, Turn Left"
            #To turn the rover to left direction from it's currrent position, we need to know it's current direction.
            if rover_facing_direction == "E"
                rover_facing_direction = 'N'
            end
            if rover_facing_direction == "N"
                rover_facing_direction = 'W'
            end
            if rover_facing_direction == "W"
                rover_facing_direction = 'S'
            end
            if rover_facing_direction == "S"
                rover_facing_direction = 'E'
            end
            puts "New Rover direction is #{rover_facing_direction}"
        end

        if instruction == "R"
            puts "The current instruction is R, Turn Right"
        end

        if instruction == "M"
            puts "The current instruction is M, Move forward"
        end

        i +=1
    end
end

get_user_input