----------------------------------------------------
--                   HackerRank                   --
--               Pascal's Triangle                --
--            Solution by Lorin Lange             --
----------------------------------------------------

pascal :: [[Int]]
pascal = [1] : iterate pascalH [1, 1]

pascalH :: [Int] -> [Int]
pascalH [x]        = [x]
pascalH lst@(x:xs) = x : pH lst

pH :: [Int] -> [Int]
pH [x]        = [x]
pH (x1:x2:xs) = (x1+x2) : pH (x2:xs)

printLst :: [Int] -> String
printLst []     = "\n"
printLst (x:xs) = show x ++ " " ++ printLst xs

printTriangle :: [[Int]] -> String
printTriangle []     = ""
printTriangle (x:xs) = printLst x ++ printTriangle xs

applyCalc :: String -> String
applyCalc str = printTriangle $ take (read str) pascal

main :: IO()
main = interact applyCalc