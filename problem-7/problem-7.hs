a `divides` b = b `rem` a == 0
isprime n = not $ any (`divides` n) [2..(floor $ sqrt (fromIntegral n))]

primes = filter isprime [2..]

main = putStrLn $ show $ last $ take 10001 primes

