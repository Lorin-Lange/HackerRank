----------------------------------------------------
--                   HackerRank                   --
--                   Valid BST                    --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import Data.List (intersperse)

data BTree a = Nil | Node (BTree a) a (BTree a)
    deriving Show

makeBST :: Ord a => [a] -> BTree a
makeBST = foldr insert Nil

insert :: Ord a => a -> BTree a -> BTree a
insert x Nil = Node Nil x Nil
insert x (Node lt v rt)
    | v == x = Node lt v rt
    | v  < x = Node lt v (insert x rt)
    | v  > x = Node (insert x lt) v rt

preorder :: BTree a -> [a]
preorder Nil            = []
preorder (Node lt v rt) = [v] ++ preorder lt ++ preorder rt

parseInput :: String -> [[Int]]
parseInput = everySecond . tail . lines
    where everySecond []       = []
          everySecond (_:x:xs) = (map read $ words x) : everySecond xs

checkBST :: Ord a => [a] -> String
checkBST lst | lst == (preorder . makeBST . reverse) lst = "YES"
             | otherwise = "NO"

main :: IO()
main = interact $ \inp -> concat $ intersperse "\n" $ 
    map checkBST (parseInput inp)