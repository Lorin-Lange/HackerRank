----------------------------------------------------
--                  HackerRank                    --
--                  List Length                   --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

len :: [a] -> Int
len []     = 0
len (_:xs) = 1 + len xs

main :: IO()
main = do
    print $ len [1..10]