----------------------------------------------------
--                  HackerRank                    --
--               Functions or Not?                --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import qualified Data.Map as Map
import Data.List.Split

result :: Bool -> String
result b = if b then "YES\n" else "NO\n"

isFunction :: Map.Map Int Int -> [(Int, Int)] -> Bool
isFunction m []         = True
isFunction m ((x,y):xs) = 
    case Map.lookup x m of
        (Just v) -> False
        Nothing  -> isFunction (Map.insert x y m) xs

parseInput :: String -> [[(Int, Int)]]
parseInput inp = parseStrings (tail $ lines inp) []

parseStrings :: [String] -> [[(Int, Int)]] -> [[(Int, Int)]]
parseStrings []  acc = acc
parseStrings inp acc = 
    let n = read $ head inp :: Int
        lst = map (\i -> 
            let l = map read $ splitOn " " i 
            in (head l, l !! 1)) (take n (tail inp))
    in parseStrings (drop (n+1) inp) (acc ++ [lst])

main :: IO()
main = interact $ \inp -> 
    concatMap (result . isFunction Map.empty) $ parseInput inp