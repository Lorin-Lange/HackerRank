----------------------------------------------------
--                   HackerRank                   --
--            Tree: Inorder Traversal             --
--            Solution by Lorin Lange             --
----------------------------------------------------

import Data.List.Split (splitOn)
import Data.List (intersperse)

data BTree = Nil | Node BTree Int BTree
    deriving Show

insert :: BTree -> Int -> BTree
insert Nil n = Node Nil n Nil
insert (Node lt v rt) n 
    | n < v = Node (insert lt n) v rt
    | n > v = Node lt            v (insert rt n)

parseTree :: String -> BTree
parseTree s = foldl insert Nil $ map read $ splitOn " " $ (last . lines) s

inorder :: BTree -> [Int]
inorder Nil            = []
inorder (Node lt v rt) = inorder lt ++ [v] ++ inorder rt

printLst :: [Int] -> String
printLst lst = concat $ intersperse " " $ map show lst

main :: IO()
main = interact $ printLst . inorder . parseTree
