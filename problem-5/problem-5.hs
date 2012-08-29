isDiv :: Int -> Bool
isDiv n = and $ map (\x -> rem n x == 0) [2..20]

main = putStrLn $ show $ head $ filter isDiv [2520..]

