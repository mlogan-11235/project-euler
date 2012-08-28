fib :: Int -> Int
fib = (map fib [1 ..] !!)
    where fib 1 = 1
          fib 2 = 2
          fib n = fib (n - 2) + fib (n - 1)

fibs = takeWhile (\x -> x <= 4000000) [fib n | n <- [1..]]

main = putStrLn $ show $ sum $ filter (even) fibs
