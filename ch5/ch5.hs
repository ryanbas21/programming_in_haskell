module Ch5 where

  myConcat :: [[a]] -> [a]
  myConcat xss = [x | xs <- xss, x <- xs]

  myLength :: [a] -> Int
  myLength xs = sum [1 | _ <- xs]
