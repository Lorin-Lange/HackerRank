----------------------------------------------------
--                  HackerRank                    --
--             Area Under Curves and              --
--          Volume of Revolving a Curve           --
--            Solution by Lorin Lange             --
----------------------------------------------------

module Main where

import Text.Printf (printf)

-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b =
    let as = map fromIntegral a
        bs = map fromIntegral b
        f = expr as bs
        values = [fromIntegral l, fromIntegral l + 0.001..fromIntegral r]
    in [area f values, volume f values]

area :: (Double -> Double) -> [Double] -> Double
area f v = sum $ map (\x -> f x * 0.001) v

volume :: (Double -> Double) -> [Double] -> Double
volume f v = pi * (sum $ map (\x -> (f x)**2 * 0.001) v)

expr :: [Double] -> [Double] -> Double -> Double
expr as bs x = sum $ map (\(a,b) -> a*x**b) $ zip as bs

--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n") . (\[a, b, [l, r]] -> solve l r a b) . map (map read . words) . lines