module Chapter1 where

  -- show sum [a] always is a
  showSum :: Num a => [a] -> a
  showSum (x:xs) = x

  -- define product
  showProduct :: Num a => [a] -> a 
  showProduct [] = 1 
  showProduct (x:xs) =  x * showProduct xs

  -- create a quicksort function that orders in reverse order
  qsort [] = []
  qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
    where
      smaller = [a | a <- xs, a >= x]
      larger = [b | b <- xs, b < x]

      
