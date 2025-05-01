

round5 :: Int -> Int
round5 var
    | var >= 38 && (multipleOf5 - var) < 3 = multipleOf5
    | otherwise = var
    where multipleOf5 = var + (5-var `mod` 5)



solverFunc :: [Int] -> [Int]
    solverFunc var = map round5 var