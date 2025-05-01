javascriptIsNotForMe :: Int -> Bool
javascriptIsNotForMe number
                 | number == 2 || number == 13 = True
                 | number `mod` 2 == 0 = False
                 | number `mod` 13 == 0 = False
                 | otherwise = True
