----------------------------------------------------
--                  HackerRank                    --
--                  Update List                   --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

-- Enter your code here. 
-- Read input from STDIN. Print output to STDOUT
f :: [Int] -> [Int]
f = map abs

-- This section handles the Input/Output and can be used as it is. Do not modify it.
main :: IO()
main = do
	inputdata <- getContents
	mapM_ putStrLn $ map show $ f $ map (read :: String -> Int) $ lines inputdata