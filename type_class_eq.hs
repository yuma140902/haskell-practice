data Point a = Eq a => Pt a a

instance Eq (Point a) where
  (Pt x y) == (Pt x' y') = x == x' && y == y'

main = do
  print $ (Pt 1 2) /= (Pt 2 3)
  print $ (Pt 1 2) == (Pt 1 2)
  print $ (Pt True False) /= (Pt True False)
