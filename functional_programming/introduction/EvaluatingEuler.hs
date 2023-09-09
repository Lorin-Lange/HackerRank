----------------------------------------------------
--                  HackerRank                    --
--                 Evaluating e^x                 --
--            Solution by Lorin Lange             --
----------------------------------------------------

module EvaluatingEuler where

import Control.Monad

euler :: Double -> Double
euler x = sum $ map (\i -> x ** (fromIntegral i) / (fromIntegral $ fac i)) [0..9]
    where fac n = product [1..n]

main :: IO()
main = do
    n <- readLn 
    forM_ [1..n] $ \n_itr -> do
        x <- readLn
        print $ euler x