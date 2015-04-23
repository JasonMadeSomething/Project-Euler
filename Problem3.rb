require 'prime'
big_num, dest = 600851475143, 0
roof = Math.sqrt(big_num).floor
roof.downto(0) do |i|
  if big_num % i == 0 && Prime.prime?(i)
    dest = i
    break
  end
  break if dest != 0  
end
puts dest

