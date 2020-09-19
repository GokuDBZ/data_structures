# We need to find minimum and maximum element in an array

require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'

Bundler.require(:default)

# We need to find minimum and maximum element in an array
# There are multiple approaches to solve this problem.


# = begin
#  Approach

#  If length of array is even then initial min and max will be from min(input[0], input[1]) and max(input[0],input[1]). Till here we got min and max which is from index 0
#  and 1. Now we will start iteration from index 2.

#  If lenght of array is odd then initial min and max will be input[0] i.e min = input[0] and max = input[0]
#  After we get initial min and max.

#  We will do two operation in one iterations i.e min and mix covering next two values from initial values
#  Like index is pointing to 0 then we will cover values at index 1 and 2, in this way we don't need to go through those values again 
#  next iteration and we will move to (index += 2) instead of (index += 1).
# = end

def min_max_with_minimum_iterations(input)
    min = nil
    max = nil
    # if length is even , inital min and max will be from 0 and 1 index
    if(input.length % 2 == 0)
        start_counter  = 2 # in case of even lenght 0 and 1 index is covered, no we will start from 2
        min = find_min(input[0], input[1])
        max = find_max(input[0], input[1])
    # else 0 index value will be min and max both
    else
        start_counter  = 1
        min = input[0]
        max = input[0]
    end
    
    while(start_counter < input.length)
        if(input[start_counter] < input[start_counter + 1])
            # min and max will be evaluated in pairs
            min = find_min(min, input[start_counter])
            max = find_max(max, input[start_counter + 1])
        else
            min = find_min(min, input[start_counter + 1])
            max = find_max(max, input[start_counter])
        end

        start_counter += 2
    end
    return [min, max]    
end

def find_min(i, j)
    i < j ? i : j
end

def find_max(i, j)
    i > j ? i : j 
end




describe "Min and Max" do
    it "Case 1" do
        expect(min_max_with_minimum_iterations([5,4,3,2,1])).to eq([1,5] )
    end

    it "Case 2" do
        expect(min_max_with_minimum_iterations([7,5,2,1,6,3,4,8])).to eq([1,8] )
    end
end