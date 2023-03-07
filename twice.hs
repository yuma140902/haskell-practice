twice :: (a -> a) -> (a -> a)
twice f x = f (f x)

square :: Int -> Int
square x = x * x

main = do
  print $ twice id 2
  print $ twice succ 2
  print $ twice square 2
  print $ twice twice square 2
