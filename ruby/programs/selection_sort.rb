


require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'

Bundler.require(:default)

=begin
Selection Sort

Selection Sort is bit similar to Insertion Sort where we kep two virtaul arrays i.e sorted and unsorted.
But logic of swapping is different. 
 Step 1- Consider the whole array as unsorted array
 Step 2- Find the minimum element from unsorted array with linear search
 Step 3 - Once you find the minimum element then swap it with first element of unsroted array

 After first pass value at index 0 is swapped with minimum element and now our unsorted array starts with index 1
 
 Now again find minimum element from index 1 till end and then replace min element with index's 1 value (Second pass)

 After second pass value at index 0 and index 1 belongs to sorted array and array starting from index 3 is unsorted


 Perform this operation till array ends
=end


def selection_sort(input_array)
    unsorted_index = 0 # initailly whole array is unsorted so we will start from index 0
    while(unsorted_index < input_array.length - 1) do
        min = input_array[unsorted_index] # consider first element as minimum and then we will find minmum by liner search
        search_index = unsorted_index + 1 # from which index we will start searching minimum
        min_position_index = unsorted_index
        
        
        
        # loop for finding min in unsorted array
        # Iterate from starting of unsorted array till last element of unsorted array. thats why used <=
        while(search_index <= input_array.length - 1) do 
            if input_array[search_index] < min
                min = input_array[search_index]
                min_position_index = search_index # we need to keep index of minimum element's index
            end
            min = input_array[search_index] if(input_array[search_index] < min)
            search_index+=1

        end

        input_array[unsorted_index], input_array[min_position_index] = input_array[min_position_index], input_array[unsorted_index]
        unsorted_index += 1
    end

    input_array
end


describe "Sort the array" do
    it "Case 1" do
        expect(selection_sort([5,4,3,2,1])).to eq([1,2,3,4,5] )
    end

    it "Case 2" do
        expect(selection_sort([7,5,2,1,6,3,4])).to eq([1,2,3,4,5,6,7] )
    end

    it "Case 2" do
        expect(selection_sort([7,5,2,1,6,3])).to eq([1,2,3,5,6,7] )
    end
end