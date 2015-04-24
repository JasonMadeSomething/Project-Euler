product = 0
999.downto(100) do |i|
  999.downto(100) do |j|
    product = i*j if i*j > product && (i*j).to_s.reverse == (i*j).to_s
  end
end
puts product