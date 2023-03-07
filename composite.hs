f, g, h :: Int -> Int
f x = x + 1
g x = x * 2
h x = x + 2

c1, c2, c3 :: Int -> Int
c1 x = f (g (h x))
c2 x = (f . g . h) x
c3 = f . g . h

main = do
  print $ c1 4
  print $ c2 4
  print $ c3 4
