----------------------------------------------------
--                   HackerRank                   --
--               Pascal's Triangle                --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import Data.List (intercalate, intersperse)

pascal :: [[Int]]
pascal = [1] : iterate (\l -> head l : pH l) [1, 1]
    where pH [x]        = [x]
          pH (x1:x2:xs) = (x1 + x2) : pH (x2:xs)

printTriangle :: [[Int]] -> String
printTriangle = intercalate "\n" . map (concat . intersperse " " . map show)

main :: IO()
main = interact $ \s -> printTriangle $ take (read s) pascal