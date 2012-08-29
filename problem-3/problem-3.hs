tgt :: Integer
tgt = 600851475143
mtgt = floor $ sqrt (fromIntegral tgt)
a `divides` b = b `rem` a == 0
isprime n = not $ any (`divides` n) [2..(floor $ sqrt (fromIntegral n))]

primes = filter isprime [mtgt, (mtgt - 1)..1]

main = putStrLn $ show $ maximum $ filter (`divides` tgt) primes

