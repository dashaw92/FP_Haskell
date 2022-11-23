-- insert 2 [1,2,3] = [1,2,2,3]
-- insert 6 [1,2,3,4] = [1,2,3,4,6]
insert :: Ord a => a -> [a] -> [a]
insert x []  = [x]
insert x [a] = [min a x, max a x]
insert x (a:b:as)
    | x >= a && x <= b = [a,x,b] ++ as
    | otherwise        = a : insert x (b : as)
