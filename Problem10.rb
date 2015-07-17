# find sum of all prime numbers under 2 million
require 'prime'
#total = 0
#for i in 1..2000000
#    if Prime.prime?(i)
#        total = total + i
#    end
#end
#puts total

#total = 0
#Prime.each(2000000) do |prime|
#    total = total + prime
#end
#puts total

puts Prime.each(2000000).inject(:+)