nth :: [a] -> Int -> a
nth [] _ = error "Index out of bounds"
nth (x:xs) n
    | n == 0                        = x
    | n >= (length xs) + 1 || n < 0 = error "Index out of bounds"
    | otherwise                     = nth xs (n - 1)
