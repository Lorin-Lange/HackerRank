----------------------------------------------------
--                   HackerRank                   --
--                   Fibonacci                    --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import Data.List

fib :: Int -> Integer
fib n = last $ take n fibs
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main :: IO()
main = interact $ \inp -> intercalate "\n" $ 
    map (\l -> show $ (fib $ read l + 1) `mod` (10^8 + 7)) $ tail $ lines inp