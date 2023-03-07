import Prelude hiding (even, odd)

even :: Int -> Bool
even 0 = True
even x = odd (x - 1)

odd :: Int -> Bool
odd 0 = False
odd x = even (x - 1)

main = do
  print $ even 0
  print $ even 1
  print $ even 2
  print $ even 3

  print $ odd 0
  print $ odd 1
  print $ odd 2
  print $ odd 3
