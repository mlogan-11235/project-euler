xs = [1..700]
triplets = [(a, b, c) | a <- xs, b <- xs, c <- xs, a*a+b*b==c*c]

getTriplet (a,b,c) = a+b+c == 1000
tripProd (a,b,c) = a*b*c

main = putStrLn $ show $ tripProd $ head $ filter getTriplet triplets
