sum = 0
sos = 0
(1...101).each do |i|
sos = sos + i**2
sum = sum + i
end
sum = sum**2
puts sum - sos

#or...
diff = ((100*(101)/2)**2) - (100*(101)*(201)/6)
puts diff