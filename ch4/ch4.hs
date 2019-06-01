module Ch4 where
  halve :: [a] -> ([a], [a])
  halve arr = splitAt (length arr `div` 2) arr

  third :: [a] -> a
  -- third xs = head $ tail $ tail xs
  -- third xs = xs !! 2
  third (_:_:x:_) = x

  safeTail :: [a] -> [ a ]
  safeTail [] = [] 
  safeTail a = tail a

  safeTail' :: [a] -> [a]
  safeTail' a 
    | length a == 0  = []
    | otherwise = tail a 

  safeTail'' :: [a] -> [a]
  safeTail'' a = if length a == 0 
                    then [] 
                    else tail a

  disjunction :: Bool -> Bool -> Bool
  disjunction True False = True
  disjunction True True = True
  disjunction False True = True
  disjunction False False = False
  
  logicalConjunction :: Bool -> Bool -> Bool
  logicalConjunction a b = if a == True && b == True
                              then True
                              else 
                                if a == False && b == False
                                   then True
                                   else False

  showCurrying :: Num a => a -> a -> a -> a
  showCurrying a = \b -> \c -> a * b * c
  
  luhnDouble :: Int -> Int
  luhnDouble x = let y = (2 * x) in if y >  9
    then y - 9
    else y

  
