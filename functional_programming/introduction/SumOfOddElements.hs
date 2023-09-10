----------------------------------------------------
--                  HackerRank                    --
--              Sum of Odd Elements               --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

f :: Integral a => [a] -> a
f = sum . filter odd

-- This part handles the Input/Output and can 
-- be used as it is. Do not change or modify it.
main :: IO()
main = do
	inputdata <- getContents
	putStrLn $ show $ f $ map (read :: String -> Int) $ lines inputdata