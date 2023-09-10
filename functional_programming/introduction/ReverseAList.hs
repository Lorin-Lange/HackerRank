----------------------------------------------------
--                  HackerRank                    --
--                 Reverse a List                 --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

rev :: [a] -> [a]
rev []     = []
rev (x:xs) = rev xs ++ [x]

main :: IO()
main = do
    print $ rev [1..10]