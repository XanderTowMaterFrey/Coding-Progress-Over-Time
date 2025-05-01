--let varL = [1, 2, 3, 4, 5]

sumL :: Int -> Int -> Int
sumL a b = a + b

sumList :: Int -> [Int] -> Int
sumList a [b] = a + Int b
-- i did not test this function but i know this is wrong

-- map sumL 7 Varl
-- this did not work 
