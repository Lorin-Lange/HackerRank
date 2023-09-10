----------------------------------------------------
--                  HackerRank                    --
--           Filter Positions in a List           --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

f :: [Int] -> [Int]
f []         = []
f [x]        = []
f (x1:x2:xs) = x2 : f xs

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main :: IO()
main = do
	inputdata <- getContents
	mapM_ (putStrLn . show) . f . map read . lines $ inputdata