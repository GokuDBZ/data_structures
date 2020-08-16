
require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'
Bundler.require(:default)

def pallindrome(input, count = 0)
    length = input.length  - 1
    if(count > input.length/2)
        return true
    end

    if(input[count] == input[length - count])
        pallindrome(input, count + 1)
    else
        return false
    end
end



describe "Check if pallindrome" do
    it "pallindrome 1 " do
      expect(pallindrome(input = ['n', 'i', 't', 'i', 'n'])).to eq true
    end

end