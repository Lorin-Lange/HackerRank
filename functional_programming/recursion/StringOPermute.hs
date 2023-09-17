----------------------------------------------------
--                   HackerRank                   --
--                String-o-Permute                --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

swap :: String -> String
swap ""         = "\n"
swap (c1:c2:cs) = c2 : c1 : swap cs

main :: IO()
main = interact $ (concat . map swap) . tail . lines