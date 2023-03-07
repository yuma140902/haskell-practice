myHead :: [a] -> a
myHead (x : _) = x

myTail :: [a] -> [a]
myTail (_ : xs) = xs

myLast :: [a] -> a
myLast [x] = x
myLast (x : xs) = myLast xs

myInit :: [a] -> [a]
myInit [_] = []
myInit (x : xs) = x : myInit xs

myTake :: Int -> [a] -> [a]
myTake 0 _ = []
myTake n (x : xs) = x : myTake (n - 1) xs

myDrop :: Int -> [a] -> [a]
myDrop 0 xs = xs
myDrop n (x : xs) = myDrop (n - 1) xs

myNth :: [a] -> Int -> a
myNth (x : _) 0 = x
myNth (x : xs) n = myNth xs (n - 1)

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f (x : xs)
  | f x = x : myFilter f xs
  | otherwise = myFilter f xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = myReverse xs ++ [x]

myPP :: [a] -> [a] -> [a]
myPP [] ys = ys
myPP (x : xs) ys = x : myPP xs ys

myConcat :: [[a]] -> [a]
myConcat [xs] = xs
myConcat (xs : xss) = xs ++ myConcat xss

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x : xs) (y : ys) = (x, y) : myZip xs ys

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith f (x : xs) (y : ys) = f x y : myZipWith f xs ys

myNull :: [a] -> Bool
myNull [] = True
myNull _ = False

myLength :: [a] -> Int
myLength [] = 0
myLength (_ : xs) = 1 + myLength xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem x (y : ys)
  | x == y = True
  | otherwise = myElem x ys

myAll :: (a -> Bool) -> [a] -> Bool
myAll _ [] = True
myAll p (x : xs)
  | p x = myAll p xs
  | otherwise = False

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny p (x : xs)
  | p x = True
  | otherwise = myAny p xs

mySum :: Num a => [a] -> a
mySum [] = 0
mySum (x : xs) = x + mySum xs

myProduct :: Num a => [a] -> a
myProduct [] = 1
myProduct (x : xs) = x * myProduct xs

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ o [] = o
myFoldr f o (x : xs) = f x (myFoldr f o xs)

myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl _ o [] = o
myFoldl f o (x : xs) = f (myFoldl f o xs) x
