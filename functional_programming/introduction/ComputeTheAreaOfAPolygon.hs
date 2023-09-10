----------------------------------------------------
--                  HackerRank                    --
--         Compute the Area of a Polygon          --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import Data.List.Split

determinant :: (Int, Int) -> (Int, Int) -> Int
determinant (x1, y1) (x2, y2) = x1 * y2 - x2 * y1

shoelaceFormula :: [(Int, Int)] -> Double
shoelaceFormula lst = (fromIntegral $ sum $ zipWith determinant lst (tail lst ++ [head lst])) / 2

parseInput :: String -> [(Int, Int)]
parseInput inp = 
    let lst = tail $ lines inp
    in map (\s -> let l = splitOn " " s in (read $ head l, read $ l !! 1)) lst

main :: IO()
main = interact $ show . shoelaceFormula . parseInput