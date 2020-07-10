
# in order to ask your ruby file to discover Gemfile and make all of the gems in 
#    your Gemfile available to the application you need to add three statements at the top of the ruby file.

require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'
Bundler.require(:default)

# When ever you look at this program .please try to implement this on copy and dry run
# then writing a program is a play of few lines.

# We know that series start with 1, 1 actual series starts from 2
def fibonacci_series(input)
    fib = 2
    while(fib < input) do
        if(fib == 2)
            previous = fib
            fib += 1
            ap(1)
            ap(1)
            ap(previous)
        else
            tmp_previous = fib # number we got from current iteration will be previous value to next value
            fib = fib + previous 
            previous = tmp_previous # setting the previous value
        end
        ap(fib)
    end
end

fibonacci_series(8)