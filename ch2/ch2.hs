module Ch2 where
 
  -- fix syntax errors
  n = a `div` length xs
    where
      a = 10
      xs = [1,2,3,4,5]

  -- create last
  myLast :: [a] -> a
  myLast a = a !! (length a - 1) 

  -- create init
  myInit a = reverse . drop 1 $ reverse a

  myInit2 a =  take (length a - 1) a
