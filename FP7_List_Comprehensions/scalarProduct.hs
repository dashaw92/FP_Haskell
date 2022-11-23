-- The stricter version that requires the lists are the same length.
-- I don't think this really makes a difference, but coming from Rust,
-- I obviously *LOVE* my Option<T> return types :)
scalarProduct' :: [Int] -> [Int] -> Maybe Int
scalarProduct' xs ys
    | length xs /= length ys = Nothing
    | otherwise              = Just $ sum [x * y | (x, y) <- zip xs ys]

-- Should be functionally the same, i.e (scalarProduct' [1,2] [3,4]) == (Just $ scalarProduct [1,2] [3,4])
scalarProduct :: [Int] -> [Int] -> Int
scalarProduct xs ys = sum [x * y | (x, y) <- zip xs ys]
