----------------------------------------------------
--                  HackerRank                    --
--               Computing the GCD                --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

gcd' :: Integral a => a -> a -> a
gcd' n 0 = n
gcd' n m = gcd' m $ n `mod` m

main :: IO()
main = interact $ \str ->
  let inp = map read $ words str
  in show $ gcd' (inp !! 0) $ inp !! 1