nums = [3,5..2000000]
a `nodivs` b = b `rem` a /= 0

allPrimes [] = []
allPrimes (n:[]) = [n]
allPrimes (n:ns) = [n] ++ allPrimes qs
    where qs = filter (\x -> n `nodivs` x) ns

main = putStrLn $ show $ sum $ [2] ++ allPrimes nums

