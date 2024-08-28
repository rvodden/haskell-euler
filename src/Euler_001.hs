module Euler_001(euler_001) where

multiple :: Integral a => a -> a -> Bool
multiple x y = y `mod` x == 0

multiple_of_3_or_5 :: Integral a => a -> Bool
multiple_of_3_or_5 a  = multiple 3 a || multiple 5 a

euler_001 :: Integral a => a -> a
euler_001 x = sum $ filter multiple_of_3_or_5 [1..(x - 1)]