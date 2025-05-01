round5 :: Int -> Int
round5 x = x + 5 - mod x 5

round5' :: Int -> Int
round5' x 
      | x >= 38 && (m5-x) < 3 = m5
      | otherwise             = x
       where m5 = x + 5 - mod x 5