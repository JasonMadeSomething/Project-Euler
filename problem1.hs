problem1 :: (Integral a) => a -> a
problem1 roof = sum [x | x <- [1..(roof-1)], mod x 3 == 0 || mod x 5 == 0]