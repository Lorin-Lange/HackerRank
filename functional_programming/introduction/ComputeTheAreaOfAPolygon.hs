----------------------------------------------------
--                  HackerRank                    --
--         Compute the Area of a Polygon          --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import Data.List.Split

determinant :: Num a => (a, a) -> (a, a) -> a
determinant (x1, y1) (x2, y2) = x1 * y2 - x2 * y1

shoelaceFormula :: [(Int, Int)] -> Double
shoelaceFormula lst = (0.5 *) 
                    . fromIntegral 
                    . sum 
                    . zipWith determinant lst $ tail lst ++ [head lst]

parseInput :: String -> [(Int, Int)]
parseInput inp = 
    map (\s -> let lst = splitOn " " s
               in (read $ head lst, read $ lst !! 1)) 
    $ tail $ lines inp

main :: IO()
main = interact $ show . shoelaceFormula . parseInput