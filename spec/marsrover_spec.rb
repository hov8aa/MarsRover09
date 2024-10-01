require_relative '../MarsRover'
# spec/MarsRover.rb

describe "#get_user_input" do
    it "validates input & output" do
#       expect(get_user_input(1,2,N)).to eq(1,3,N)
        puts "Validated input & Output"
    end

end

# Hypothesis: It's possible to write the test cases with rspec with a function in base file without taking arguments as inputs.
# Current Query: how to test a fucntion that doesn't take arguments in ruby specs.
# New Learning: "expect" is the key to resolve this situation.
# Hypothetical statement would be something like this:

# Input coortinates & direction : 1,2,N
# Output coordinates & direction : 1,3,N
# if input is x then output eq(1,3,N)

# expect(1,2,N).to eq(1,3,N) (to be very specific)

# New hypothesis: I need to understand expect keyword and matchers which seem to hold the key
