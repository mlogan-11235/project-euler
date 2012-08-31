fact :: Integer -> Integer
fact 0 = 1
fact 1 = 1
fact n = n * fact (n - 1)

sumDigits :: String -> Int
sumDigits s = foldr (\c d -> d + (read [c])) 0 s

main = putStrLn $ show $ sumDigits $ show $ fact 100

