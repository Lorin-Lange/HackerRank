----------------------------------------------------
--                  HackerRank                    --
--              Hello World N Times               --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

main :: IO()
main = do
    n <- readLn :: IO Int
    mapM_ putStrLn $ take n $ repeat "Hello World"