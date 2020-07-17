
# in order to ask your ruby file to discover Gemfile and make all of the gems in 
#    your Gemfile available to the application you need to add three statements at the top of the ruby file.

require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'
Bundler.require(:default)



# Problem
  # Move all zeroes to end

  # input [2,4,0,5,0] # Output [2,4,5,0,0]
  


input = [2,4,0,5,0]

def move_zeroes_to_end(input)
    # push all non zero values in same array from index 0
    # in end we will get to know how many zeroes are there
    non_zero_count = 0

    input.each_with_index do |value, index|
        if value != 0
            input[non_zero_count] = value
            non_zero_count+=1
        end
    end

    while non_zero_count  < input.length
        input[non_zero_count] = 0
        non_zero_count+=1
    end
    input
end


describe "should push all zeroes to end" do
    it "input [2,4,0,8,9,0]" do
        expect(move_zeroes_to_end([2,4,0,8,9,0])).to eq([2,4,8,9,0,0])
    end

    it "input   [2,0,1,5,0]" do
        expect(move_zeroes_to_end([2,0,1,5,0])).to eq([2,1,5,0,0])
    end
end