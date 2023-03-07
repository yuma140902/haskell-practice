qsort [] = []
qsort (p:xs) = qsort smaller ++ [p] ++ qsort larger 
  where
    smaller = [x | x <- xs, x < p]
    larger = [x|x<-xs,x>=p]

main = print $ qsort [3,2,4,1,5]
