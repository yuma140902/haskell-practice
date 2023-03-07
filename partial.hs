mult :: Int -> Int -> Int
mult x y = x * y

double :: Int -> Int
double = mult 2

main = print (double 3)
