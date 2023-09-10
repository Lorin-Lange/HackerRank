----------------------------------------------------
--                  HackerRank                    --
--                List Replication                --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

f :: Int -> [Int] -> [Int]
f n = concatMap (\e -> take n $ repeat e)

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print . (\(n:arr) -> f n arr) . map read . words