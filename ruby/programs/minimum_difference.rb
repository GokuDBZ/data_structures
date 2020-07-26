
require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'
Bundler.require(:default)

=begin
Problem- Minimum Difference pair in two arrays

we have two arrays say array1 and array2 and between both array we need to find a pair whose diff is smallest between all pairs

Solution- 

1- Make use of two loops, one parent  another nested and make all pairs and keep checking minimum diff till both loop ends
   In this case time complexity will be O(n2)

2- Optimal Solution
   2.1-  Sort both arrays. time complexity will be n(logn)  for sorting first array of length n and for second array fo length m it will be m(log(m)) => nlog(n) + mlog(m)
   2.2 We will keep two pointers, one for array x and anohter for array y with inital value 0
   2.3 Now we will iterate over both arrays with these counters in a single loop 
   2.4 we will store pairs in a single loop if we find temporary min difference
   2.5 Break if array x or y ends
=end
def minimum_difference(x_array, y_array)
    temp_result = []

    minimum_diff = Float::INFINITY
    x_count, y_count = 0, 0

    x_array = x_array.sort
    y_array = y_array.sort

    while true do

        break if x_array[x_count].nil? || y_array[y_count].nil?
        # if both nos are equal then we found our difference and break 
        if(x_array[x_count] == y_array[y_count])
            
            temp_result[0] = [x_array[x_count], y_array[y_count]]
            temp_result[1] =  x_array[x_count] - y_array[y_count] 
            break
        end
        puts " value #{x_array[x_count]}  x counter #{x_count}"
        puts " value #{y_array[y_count]}  y counter #{y_count}"
        
        temp_diff = (x_array[x_count] - y_array[y_count]).abs
        
           #temp_diff <= minimum_diff => there can be a case if we have aleady minimum difference lets say 2 and in next iteration we again get pair diff 2 so we need to update to latest min diff  
           
           # If we want to keep old min diff use temp_diff < minimum_diff
           if temp_diff < minimum_diff 
            minimum_diff = temp_diff
            temp_result[0] = [x_array[x_count], y_array[y_count]]
            temp_result[1] = temp_diff
        end

        

        if(x_array[x_count] < y_array[y_count])
            x_count+=1
        else
            y_count+=1
        end
    end

    return temp_result
end

minimum_difference([-1,5,10,20,28,3],[26,134,135,15,17])


describe "calculate minimum difference" do
    it "method should return pair having smallest diffrence" do
        array1 = [-1,5,10,20,28,3]
        array2 = [26,134,135,15,17]

        expect( minimum_difference(array1, array2)).to eq([[28, 26], 2] )
    end

    it "method should return pair having smallest diffrence" do
        array1 = [-1,5,10,20,28,3]
        array2 = [26,134,135,4,17]

        expect( minimum_difference(array1, array2)).to eq([[3, 4], 1] )
    end

    it "method should return pair having smallest diffrence" do
        array1 = [-2,0,6,7,8,5]
        array2 = [5,3,1,-5,6]
        
        expect( minimum_difference(array1, array2)).to eq([[5,5], 0] )
    end


end