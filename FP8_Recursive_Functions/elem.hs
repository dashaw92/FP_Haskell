contains :: Eq a => a -> [a] -> Bool
contains _ [] = False
contains n (x:xs) = n == x || contains n xs
