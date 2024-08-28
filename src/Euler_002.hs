module Euler_002(euler_002) where


euler_002 :: Integer -> Integer
euler_002 x = sum $ takeWhile (< x) $ filter even fibs
    where
        fibs = 1 : 2 : next fibs
        next (a : t@(b:_)) = (a+b) : next t
