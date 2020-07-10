
# in order to ask your ruby file to discover Gemfile and make all of the gems in 
#    your Gemfile available to the application you need to add three statements at the top of the ruby file.

require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'
Bundler.require(:default)

# Step 1- Sort the array
# we will traverse array from both end
# left index starts from 0 and right index is last value in array

# if sum of left and right index value is less than target sum then we will move our left index
#  because we are in a sorted array and we know that we need greater value at right index to get the equivalent sum

#  else if sum of both index values is greater than target sum then move the right index czz right index value is causing the sum to be greater then required sum
#   so we move right idex so that we can get a smaller value


# input - [3, 5, -4, 8, 11, -1, 6]
#   then sorted input - [-4, -1, 3, 5, 6, 8, 11]


def sum_of_pairs_with_sorting(input, target_sum)
    # sort the input from low to high
    sorted_input  = input.sort
    result = []

    right_index = sorted_input.length - 1 # representing last element
    left_index =   0 # representing first element

    while(left_index < sorted_input.length && right_index >= 0) do
        tmp_result = sorted_input[right_index] + sorted_input[left_index] 
        if tmp_result  == target_sum
            result << sorted_input[right_index]
            result << sorted_input[left_index]
            break
        elsif tmp_result > target_sum
            # if sum of two values is greater than target sum then move right index towards right i.e decrement right index by 1
            right_index-=1
        else
            # if sum of two values is less than target sum then move left index towards right i.e increment right index by 1
            left_index+=1
        end    
    end
    return result
end


    # for running spec
    # rspec ./programs/sum_of_pairs.rb
    describe "Sum of pairs with sorting" do
        it "Should return the sum as 10" do
          expect(sum_of_pairs_with_sorting(input = [3, 5, -4, 8, 11, -1, 6], target_sum = 10).sum).to eq 10
        end
    
        it "Should return the sum as 14" do
          expect(sum_of_pairs_with_sorting(input = [3, 5, -4, 8, 11, -1, 6], target_sum = 14).sum).to eq 14
        end
    
        it "Should return the sum as 8" do
            expect(sum_of_pairs_with_sorting(input = [3, 5, -4, 8, 11, -1, 6], target_sum = 8).sum).to eq 8
        end
        
        it "Should return the sum as 0 as not pair is present" do
            expect(sum_of_pairs_with_sorting(input = [3, 5, -4, 8, 11, -1, 6], target_sum = 20).sum).to eq 0
        end
    end