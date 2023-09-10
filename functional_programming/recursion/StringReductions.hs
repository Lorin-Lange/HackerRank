----------------------------------------------------
--                  HackerRank                    --
--               String Reductions                --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import qualified Data.Set as Set

reduce :: Set.Set Char -> String -> String
reduce _ ""     = ""
reduce s (c:cs) | Set.member c s = reduce s cs
                | otherwise      = c : reduce (Set.insert c s) cs

main :: IO()
main = interact $ reduce Set.empty