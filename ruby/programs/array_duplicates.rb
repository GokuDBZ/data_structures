
=begin
 Problem- Find duplicate elements with single loop in an array

 Solution- Since we have to use single loop. using a hash will be bit helpful
           on each iteration we will add value as a key but before that we will check if key already exists or not
           If key exist then we got our duplicate no.

    Average Time Complexity - O(n) as we are iterating over all elements
    Average Space Complexity - O(n) as we are using a hash as well to store values
    
=end



def duplicate_in_array(input_array)
      tmp_hash = {}
    for i in input_array do
      if tmp_hash.has_key?(i)
        return i
      else
        tmp_hash[i] = i
      end
    end
end


describe "find duplicat element using single array" do

    it "first case" do
        input_array = [1,2,2,3,67,8]
        expect(duplicate_in_array(input_array)).to eq(2)
    end

    it "second case" do
        input_array = [1,5,2,3,5,7]
        expect(duplicate_in_array(input_array)).to eq(5)
    end

    it "hello" do
    end

end