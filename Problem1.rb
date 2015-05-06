#finds sum of all multiples of 3 and 5 up to 1000
total = 0
1000.times do |i|
  if (i%3 == 0 || i%5 == 0)
    total += i
  end
end
puts total
