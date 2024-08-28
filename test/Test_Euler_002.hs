module Main(main) where

import Test.HUnit
import qualified Euler(euler_002)

test_002a :: Test
test_002a = TestCase (assertEqual "for < 10" (Euler.euler_002 (10 :: Integer)) 10)
test_002b :: Test
test_002b = TestCase (assertEqual "for < 4000000" (Euler.euler_002 (4000000 :: Integer)) 4613732)

tests :: Test
tests = TestList [TestLabel "for < 10" test_002a, TestLabel "for < 4000000" test_002b]

main :: IO ()
main = do 
    runTestTTAndExit tests