#finds LCM of range 1-20
require 'prime'
relevent_factors = []
range = 20
range.times do |i|
  i += 1
  if Prime.prime?(i)
    exp, maxexp = 0, 1
    while (i**exp) <= range
      maxexp = exp if (i**exp) <= range
      exp += 1
    end
    relevent_factors << i**maxexp
  end
end
p relevent_factors.reduce(:*)

