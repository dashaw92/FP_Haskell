-- A perfect number is a number where the sum of its factors excluding itself are
-- equal to the number.
perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sumFactors x == x]
    where
        sumFactors as = sum (factors as)

-- Returns all factors of n excluding n itself.
factors :: Int -> [Int]
factors n = [x | x <- [1..n - 1], mod n x == 0]
