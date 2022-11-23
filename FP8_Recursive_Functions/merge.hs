-- Taking two sorted lists, merge them together to produce one final sorted list:
-- merge [2,5,6] [1,3,4] = [1,2,3,4,5,6]
merge :: Ord a => [a] -> [a] -> [a]
merge as [] = as
merge [] bs = bs
merge (x:xs) (y:ys) = [min x y, max x y] ++ merge xs ys

-- I don't /think/ this is considered cheating, because I did implement it the expected way?
-- The only thing sketchy is using min and max, but that's just shorthand for doing the if/else's
-- manually, which causes the definition to become bloated
