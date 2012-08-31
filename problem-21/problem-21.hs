import Data.List

divisors :: Int -> [Int]
divisors n = filter (\x -> rem n x == 0) [1..(floor (dn / 2.0))]
    where dn = fromIntegral n

sumdiv = sum.divisors
sumdiv2 = sumdiv.sumdiv

getAmicables :: Int -> [Int]
getAmicables n 
    | and [sd /= n, sd2 == n] = [n, sd]
    | otherwise = []
    where sd = sumdiv n
          sd2 = sumdiv2 n

getAllAmicables :: [Int] -> [Int]
getAllAmicables ns = nub $ concat $ map getAmicables ns

main = putStrLn $ show $ sum $ getAllAmicables [1..10000]
