main = do
  print [1 .. 5]
  print [1, 3 .. 10]
  print $ take 5 [1 ..]
  print [x | x <- [1 .. 10], odd x]
  print [(x, y) | x <- [1, 2], y <- [3, 4]]
  print [(x, y) | x <- [1, 2, 3], let y = 4]
  print [(x, 4) | x <- [1, 2, 3]]
  print [x + y | x <- [1, 2, 3], y <- [4, 5, 6]]
