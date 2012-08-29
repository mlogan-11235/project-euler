threes = [100..999]
combos = [x * y | x <- threes, y <- threes]

isPalindrome :: String -> Bool
isPalindrome (a:b:c:d:e:[]) = and [(a == e), (b == d)]
isPalindrome (a:b:c:d:e:f:[]) = and [(a == f), (b == e), (c == d)]

test :: Int -> Bool
test n = isPalindrome $ show n

main = putStrLn $ show $ maximum $ filter test combos
