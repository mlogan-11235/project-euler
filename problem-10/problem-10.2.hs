--http://ideone.com/p0e81
minus xs@(x:xt) ys@(y:yt) = case compare x y of
    LT -> x : minus xt ys
    EQ ->     minus xt yt
    GT ->     minus xs yt
minus a b = a

primes m = 2 : sieve [3,5..m] where
    sieve (p:xs)
     | p * p > m = p : xs
     | True      = p : sieve (minus xs [p*x | x <- p:xs])
    sieve []     = []

main = putStrLn $ show $ sum $ primes 2000000
