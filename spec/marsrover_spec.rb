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

# Input coortinates & location : 1,2,N
# Output coordinates & location : 1,3,N
# expect(input location coordinates & direction).to eq(1,3,N)

# expect(1,2,N).to eq(1,3,N) (to be very specific)
