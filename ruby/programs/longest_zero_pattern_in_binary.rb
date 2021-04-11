
require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'

Bundler.require(:default)

def longest_zero_substring(input, temp_count = 0, count = 0, index = 0)
    if(index == input.length - 1)
      puts "last index"
      puts temp_count
      return input[index] == 0 ? max(temp_count, count + 1) :  max(temp_count, count)
    end
    
    if(input[index] == 1)
      puts max(count, temp_count)
      return longest_zero_substring(input, max(count, temp_count), 0, index + 1)
    end

    return longest_zero_substring(input, max(count, temp_count), count + 1, index + 1)

  end

  def max(a, b)
    a > b ? a : b
  end

  def find_longest_zero_substring(input)
    input = input.to_s(2).chars.map(&:to_i)
    puts input
    return longest_zero_substring(input)
  end

  describe do
    it("5 [1,0,1]") do
        expect(find_longest_zero_substring(5)).to eq(1)
    end 
  end
  