-- Just copied from ../FP8/merge.hs
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) = [min x y, max x y] ++ merge xs ys

-- It *almost* works, but I have literally no idea what's wrong.
-- I think it has to do with halve returning arrays that are not the same size
-- in the case of odd sized list, meaning this bug will only show up when the list
-- is of size 3? Maybe?
--
-- msort [5,1,2,3,6] = [1,2,3,5,6]
-- msort [5,2,1]     = [1,5,2] ??? <- The bug
-- msort [5,2]       = [2,5]
--
-- I know it has to do with my implementation of halve, but I don't really know of
-- a good way of solving it.
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort ys) (msort zs)
    where 
        (ys, zs) = halve xs
        halve xs = (take (length xs `div` 2) xs, drop (length xs `div` 2) xs)
