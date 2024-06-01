----------------------------------------------------
--                   HackerRank                   --
--         Tree: Height of a Binary Tree          --
--            Solution by Lorin Lange             --
----------------------------------------------------

import Data.List.Split (splitOn)

data BTree = Nil | Node BTree Int BTree
    deriving Show

insert :: BTree -> Int -> BTree
insert Nil n = Node Nil n Nil
insert (Node lt v rt) n 
    | n < v = Node (insert lt n) v rt
    | n > v = Node lt            v (insert rt n)

parseTree :: String -> BTree
parseTree s = let lst = map read (splitOn " " $ (last . lines) s) :: [Int]
              in foldl insert Nil lst

height :: BTree -> Int
height Nil            = -1
height (Node lt _ rt) = 1 + max (height lt) (height rt)

main :: IO()
main = interact $ show . height . parseTree
