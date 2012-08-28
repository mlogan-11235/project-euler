import Data.List

problem1 = sum $ nub $ [3, 6..999] ++ [5, 10..999]

main = putStrLn $ show problem1
