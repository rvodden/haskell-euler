module Main where

import qualified Euler (euler001)


main :: IO ()
main = do
  print (Euler.euler001 (1000 :: Integer))
  
