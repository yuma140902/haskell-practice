data Shape
  = Rect Double Double
  | Tri Double Double
  | Circle Double
  | Point

area :: Shape -> Double
area (Rect width height) = width * height
area (Tri x y) = x * y / 2
area (Circle r) = 3.14 * r * r
area Point = 0.0

main = do
  print $ area (Rect 3 4)
  print $ area (Tri 3 4)
  print $ area (Circle 2)
  print $ area Point
