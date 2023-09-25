----------------------------------------------------
--                   HackerRank                   --
--                 Rotate String                  --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import Data.List

rotate :: Int -> [a] -> [a]
rotate = drop <> take

rotateWithSteps :: String -> String
rotateWithSteps s = intercalate " " $ tail $ take (length s + 1) $ iterate (rotate 1) s

main :: IO()
main = interact $ \inp -> concatMap (\s -> rotateWithSteps s ++ "\n") $ tail $ lines inp