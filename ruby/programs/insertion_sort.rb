
require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'

Bundler.require(:default)

=begin
 In Insertion Sort we create a sublist of sorted array in existing array (virtually)

We take the first element of array as our sublist.
Then compare the last element of sublist with first element of rest of the array

If [5,4,3,2,1] is our array then initially 5 (whom pointer sorted_index is pointing and sorted_index have value 0 initially) element of out sublist
and the rest of array is 4,3,2,1 in which first element is being pointed by pointer starting_index

Then we will compare value at sorted_index with value at starting_index

Follow this program to understand it better

=end

def insertion_sort(input)
    sorted_index = 0 # this will keep the counter to end of our virtaul sublist
    start_index  = 1 # this is like rest of array starting with index 1 initially

    while( start_index < input.length ) do
        puts "inside loop"
        if input[start_index] <  input[sorted_index]
            # swap the values 
            puts "outer loop swap start index #{input[start_index]}  sorted #{input[sorted_index]}"
            input[start_index], input[sorted_index] = input[sorted_index], input[start_index]
            puts "input after swap #{input}"
            
            
            tmp_sorted_index = sorted_index
            sorted_index +=  1

            # once swapping happens then we got one more element in our list
            # now we need to make sure that after adding new number the sublist remains sorted
            while(tmp_sorted_index > 0) do
              if(input[tmp_sorted_index] < input[tmp_sorted_index - 1])
                puts "inner loop swap index left #{input[tmp_sorted_index]} right  #{input[tmp_sorted_index -1]}"
                input[tmp_sorted_index], input[tmp_sorted_index - 1] = input[tmp_sorted_index - 1], input[tmp_sorted_index]
                puts "input after inner swap #{input}"
              end

              tmp_sorted_index -= 1
            end
        else
            # if no is not small then it means current no is smaller now move the sorted counter
            sorted_index +=  1 
        end

        start_index += 1 # this is counter for rest of array which will increase on every iteration
        # when it increments then we compare value at this index with value at 
    end
    input
end


describe "Sort the array" do
    it "Case 1" do
        expect(insertion_sort([5,4,3,2,1])).to eq([1,2,3,4,5] )
    end

    it "Case 2" do
        expect(insertion_sort([7,5,2,1,6,3,4])).to eq([1,2,3,4,5,6,7] )
    end
end