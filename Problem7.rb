require 'prime'
prime_n,i,prime = 1,1
until prime_n == 10_001 do
  unless i%2==0
    prime_n +=1 if Prime.prime?(i)
    prime = i
  end
  i += 1
end
puts prime
