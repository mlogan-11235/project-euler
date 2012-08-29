nums = [1..100]
sq = (\x->x*x)
ssq = sum $ map sq nums
sqs = sq $ sum nums

main = putStrLn $ show (sqs - ssq)
