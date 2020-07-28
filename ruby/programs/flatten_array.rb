

# in order to ask your ruby file to discover Gemfile and make all of the gems in 
#    your Gemfile available to the application you need to add three statements at the top of the ruby file.

require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'

Bundler.require(:default)


def flatten_array(input_array, output_array)
    input_array.each do |inp|
        if inp.is_a?(Array)
            flatten_array(inp, output_array)
        else
            output_array << inp
        end
    end
    return output_array
end

describe "flatten array" do
    it "Should return data as expected data" do
        expect(flatten_array([1, 2, [3, 4, [5, 6]]],   [])).to eq [1, 2, 3, 4, 5, 6]
    end
end
