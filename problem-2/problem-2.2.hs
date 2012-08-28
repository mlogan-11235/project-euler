-- Idea for scanl given by my buddy Mike!
fibs = 0 : scanl (+) 1 fibs
evenFibs = filter even $ takeWhile (\x -> x <= 4000000) fibs

main = putStrLn $ show $ sum $ evenFibs
