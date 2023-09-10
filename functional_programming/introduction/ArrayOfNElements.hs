----------------------------------------------------
--                  HackerRank                    --
--              Array Of N Elements               --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

fn :: Int -> [Int]
fn n = [1..n]

main :: IO()
main = do
    n <- readLn
    print $ fn n