----------------------------------------------------
--                  HackerRank                    --
--               Fibonacci Numbers                --
--            Solution by Lorin Lange             --
----------------------------------------------------

--Contributed by Ron Watkins
module Main where

fib :: Int -> Int
fib n = last $ take n fibs
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main :: IO()
main = do
    input <- getLine
    print . fib . (read :: String -> Int) $ input