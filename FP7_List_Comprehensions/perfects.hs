-- A perfect number is a number where the sum of its factors excluding itself are
-- equal to the number.
-- This function finds the first n perfect numbers.
perfects :: Int -> [Int]
perfects n = take n allPerfects

-- Computes an infinite sequence of perfect numbers
allPerfects :: [Int]
allPerfects = [x | x <- [1..], sumFactors x == x]
    where
        sumFactors as = sum (factors as)

-- Returns all factors of n excluding n itself.
factors :: Int -> [Int]
factors n = [x | x <- [1..n - 1], mod n x == 0]
