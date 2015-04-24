#finds sum of even fibonacci numbers less than four million
def fib(n)
  return n==1 ? 1 : n==2 ? 2 : fib(n-1) + fib(n-2)  
end
i, total, nth_value = 1, 0 , 1
while nth_value <= 4000000
  nth_value = fib(i)
  i = i + 1
  total = nth_value + total if nth_value%2==0
end
puts total
