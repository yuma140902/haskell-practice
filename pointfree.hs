f :: Int -> Int -> Int
f a b = a + b

g :: Int -> Int
g a = a + 1

foo, bar :: Int -> Int -> Int
foo x y = f x (g y)
bar = (. g) . f

main = do
  print $ foo 1 2
  print $ bar 1 2
  print $ foo 10 3
  print $ bar 10 3
