
require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'

Bundler.require(:default)

=begin
In this program we will be finding longest sequence of 0 in a binary form of integer
Eq- if 5 has binary form of 101 then longest sequence of 0 is 1
Eq- In Binary form 10010001, longest sequence of 0 is 3.

We have follwed recursive approach to solve this issue
In method below, temp_count will be following count. Count will represent no of zeroes

- If we find 1 then we will be compairing count and temp_count as which count is bigger(we have to find longest sequence) (line 32)
- When we move to next zeroes after 1 then we pass count as 0(now we will look for new longest sequence) and make temp_count = count becuase we have to keep track of longest sequence

- If we don't find 1 then we expect that no is 0 and we just increment count and temp will be max(temp_count, count)

- Return case - if we reach to last index then we will return.
   Since we are looking for longest sequence and we are also keeping track count of previous longest sequnce.
   We have to take care of 0 as well if found at last index. 
=end

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
  