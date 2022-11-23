-- Given an Int n, provide all pythagorean triples from 1..n
-- Pythagorean triple: z^2 = x^2 + y^2
myPyths :: Int -> [(Int, Int, Int)]
myPyths n = [ (x, y, z) | x <- ns, y <- ns, z <- ns, triple x y z ]
    where
        ns = [1..n]
        triple x y z = x^2 + y^2 == z^2
