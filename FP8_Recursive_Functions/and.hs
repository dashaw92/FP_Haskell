myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (b:bs) = if not b then False else myAnd bs
