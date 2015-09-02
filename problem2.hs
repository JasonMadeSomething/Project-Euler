fib :: (Integral a) => a -> a
fib 1 = 1
fib 2 = 2
fib n = fib (n-1) + fib (n-2)

problem2 :: Integer
problem2 = sum (takeWhile (<4000000) (filter even (map fib [1..])))
