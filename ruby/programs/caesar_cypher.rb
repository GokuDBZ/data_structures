

require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'
Bundler.require(:default)


# this is only for lower case letters
def caesar_cypher(input_array, key = 2)
    i = 0
    while(i < input_array.length) do
        new_char_ord = input_array[i].ord + 2

        if(new_char_ord <= 122) # 65 is a 
            input_array[i] =  new_char_ord.chr
        else
            input_array[i] =    (97 + (new_char_ord - 123)).chr # 97 + 123 -123  = 0 will give 97 in end
        end
        i+=1
    end

    input_array
end

describe "Caesar Cypher" do
    it "Case 1" do
        expect(insertion_sort(['s', 'u', 'r', 'a', 'j'])).to eq(['u','w', 't', 'c', 'l'] )
    end

    it "Case 2" do
        expect(insertion_sort([7,5,2,1,6,3,4])).to eq([1,2,3,4,5,6,7] )
    end
end