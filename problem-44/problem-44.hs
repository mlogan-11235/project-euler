pent :: Int -> Int
pent n = floor ((rn * (3.0 * rn - 1.0)) / 2.0)
    where rn = (fromIntegral n)

pents = map pent [1..200]


main = putStrLn $ show res
