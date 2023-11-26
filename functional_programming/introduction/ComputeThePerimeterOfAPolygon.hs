----------------------------------------------------
--                  HackerRank                    --
--       Compute the Perimeter of a Polygon       --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import Data.List.Split

distance :: (Int, Int) -> (Int, Int) -> Double
distance (x1, y1) (x2, y2) = sqrt $ fromIntegral $ (x2 - x1)^2 + (y2 - y1)^2

perimeter :: [(Int, Int)] -> Double
perimeter lst = sum $ zipWith distance lst (tail lst ++ [head lst])

parseInput :: String -> [(Int, Int)]
parseInput inp =
    map (\s -> let lst = splitOn " " s 
               in (read $ head lst, read $ lst !! 1)) 
    $ tail $ lines inp

main :: IO()
main = interact $ show . perimeter . parseInput