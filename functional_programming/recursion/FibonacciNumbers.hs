----------------------------------------------------
--                  HackerRank                    --
--               Fibonacci Numbers                --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

fib :: Int -> Int
fib n = last $ take n fibs
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main :: IO()
main = interact $ show . fib . read