module Main(main) where

import Test.HUnit
import qualified Euler(euler_001)

test_001a :: Test
test_001a = TestCase (assertEqual "for < 10" (Euler.euler_001 (10 :: Integer)) 23)
test_001b :: Test
test_001b = TestCase (assertEqual "for < 1000" (Euler.euler_001 (1000 :: Integer)) 233168)

tests :: Test
tests = TestList [TestLabel "for < 10" test_001a, TestLabel "for < 1000" test_001b]

main :: IO ()
main = do 
    runTestTTAndExit tests