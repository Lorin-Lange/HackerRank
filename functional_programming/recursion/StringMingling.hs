----------------------------------------------------
--                   HackerRank                   --
--                String Mingling                 --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

mingle :: String -> String -> String
mingle ps qs = concat $ zipWith (\p q -> [p, q]) ps qs

main :: IO()
main = interact $ \inp -> mingle (lines inp !! 0) (lines inp !! 1)