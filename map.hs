square :: Int -> Int
square x = x * x

main :: IO ()
main = do
  print $ map id [1, 2, 3, 4, 5]
  print $ map succ [1, 2, 3, 4, 5]
  print $ map square [1, 2, 3, 4, 5]
