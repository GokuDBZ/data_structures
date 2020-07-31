

=begin
  we need to rotate array by given length
  eq id array is [1,2,3,4,5] and length is k i.e 2 then output should be [3,4,5,1,2]

  Solution: 
    Step 1 - We will take out array to move into a temporary array
    which is [1,2] in above exmaple

    Step 2 - Now shift the remaining array towards left. Each element will be moved to index i.e [index - k]. So that they can be put from starting
             Eq after taking out array should look like [3,4,5,..]
    
    Step 3 -  Now start putting the temporary array from end

    Time Complexity - O(n) n is length of input array
    Space Complexity - O(k)  k is lenght of temporary array

=end


def rotate_array(k, input)
    index = 0
    array_to_put_in_last = []
    # Step 1
    while(index < k) do
        array_to_put_in_last << input[index]
        index+=1
    end
    
    puts array_to_put_in_last
    while(index < input.length) do
        puts "index #{index}"
        puts "index -k #{index - k}"
        input[index - k] = input[index]
        index+=1
    end

    actual_length = array_to_put_in_last.length - 1

    while(actual_length >=0) do
        input[index-1]= array_to_put_in_last[actual_length]
        index-=1
        actual_length-=1
    end
end