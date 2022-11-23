myReplicate :: Int -> a -> [a]
myReplicate 0 x = []
myReplicate n x = [x] ++ myReplicate (n - 1) x
