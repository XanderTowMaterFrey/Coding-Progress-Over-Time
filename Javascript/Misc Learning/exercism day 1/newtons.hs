squareRoot :: Double -> Int
squareRoot radicand
    | radicand < 0 = error "Radicand must be a non-negative number"
    | otherwise    = squareRoot' (toInt (radicand * 100)) (toInt ((radicand * 100) / 2))
    where
        toInt :: Double -> Int
        toInt x = round x `shiftR` 7  -- 10^7 is a large enough power of 10 for our purposes
        
        squareRoot' :: Int -> Int -> Int
        squareRoot' rad guess
            | abs (guess * guess - rad) <= 100 = guess
            | otherwise = squareRoot' rad ((guess + rad `div` guess) `div` 2)
