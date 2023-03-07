power :: Int -> Double -> Double
power 0 _ = 1.0
power x y
  | x > 0 = y * power (x - 1) y
  | otherwise = 1.0 / power (-x) y

main = do
  print $ power (-8) 2.0
  print $ power 8 2.0
