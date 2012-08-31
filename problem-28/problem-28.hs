diagDist = 500 -- 1001 spiral yields 500 diags in each direction

sumDiags :: Int -> Int -> Int -> Int
sumDiags _ _ 0 = 0
sumDiags d s n = s + (sumDiags (d + 8) (s + d + 8) (n - 1))

main = putStrLn $ show $ 1 + (sumDiags 2 3 diagDist) + (sumDiags 4 5 diagDist) + (sumDiags 6 7 diagDist) + (sumDiags 8 9 diagDist)
