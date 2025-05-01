-- import Data.List (intercalate, reverse)


toBin :: Int -> [Int]
toBin 0 = [0]
toBin n = reverse (toBinHelper n)

toBinHelper :: Int -> [Int]
toBinHelper 0 = []
toBinHelper n = let (q,r) = n `divMod` 2 in r : toBinHelper q -- the list is being declared as a variable, the variable is "toBinHelper q"

makeItAnInt :: [Int] -> Int
makeItAnInt = read . concatMap show


assembler :: [Int] -> [String]
assembler binaryMap = case assembleHelper binaryMap of
    Just result -> result
    Nothing     -> []

assembleHelper :: [Int] -> Maybe [String]
assembleHelper binaryMap = Just $ map assemble [0..4]
    where
        assemble index
            | index == 0 && binaryMap !! 0 == 1 = "wink"
            | index == 1 && binaryMap !! 1 == 1 = "double blink"
            | index == 2 && binaryMap !! 2 == 1 = "close your eyes"
            | index == 3 && binaryMap !! 3 == 1 = "jump"
            | index == 4 && binaryMap !! 4 == 1 = "atest" --reverse $ map show yy
            | otherwise = ""




{- assembler :: [Int] -> Maybe [String]
assembler yy
for index in yy {
case index of 
	0 -> | yy !! 0 == 1 -> Just "wink"
	     | otherwise -> Nothing
	1 -> | yy !! 1 == 1 -> Just "double blink"
	     | otherwise -> Nothing
	2 -> | yy !! 2 == 1 -> Just "close your eyes"
	     | otherwise -> Nothing
	3 -> | yy !! 3 == 1 -> Just "jump"
	     | otherwise -> Nothing
	4 -> | yy !! 4 == 1 -> Just reverse yy
	     | otherwise -> Nothing
    _ -> Nothing
}
-}

-- main ::  IO()
-- main = do 
--    let caseNumba = length $ toBin 15 -- 4
--    caseChecka caseNumba . toBin 15

-- caseChecka :: Int -> Maybe [Int]
-- caseChecka case2Check =
--     let listy = []
--     let (e:d:c:b:a) = listy
--     in case case2Check of 
--        5 -> Just [e,d,c,b,a]
--        4 -> Just [d,c,b,a]
--        3 -> Just [c,b,a]
--        2 -> Just [b,a]
--        1 -> Just [a]
--        _ -> Nothing

    {-| case2Check == 5 = let (e:d:c:b:a) = listy in Just (e:d:c:b:a)
    | case2Check == 4 = let (d:c:b:a) = listy in Just (d:c:b:a)
    | case2Check == 3 = let (c:b:a) = listy in Just (c:b:a)
    | case2Check == 2 = let (b:a) = listy in Just (b:a)
    | otherwise       = Nothing -}

-- if length 16+
-- e:d:c:b:a:[] = toBin 26
-- if length 8-15
-- d:c:b:a:[] = toBin 26
-- if length 4-7
-- c:b:a:[] = toBin 26
-- if length 2 or 3
-- b:a:[] = toBin 26
-- if length 1
-- a:[] = toBin

-- makeItAnInt toBin 8

-- main :: IO ()
-- main = do 
--     makeItAnInt $ toBin read . getLine 

-- checkBinLength :: Int -> Int
-- checkBinLength n
--     | n >= 16 = 5
--     | n <= 15 && n >= 8 = 4
--     | n <= 7 && n >= 4 = 3
--     | n == 3 || n == 2 = 2
--     | n == 1 = 1
--     | otherwise = 0

{-
assembler2 :: [Int] -> Maybe [String]
assembler2 yy = Just $ map assemble [0..4]
    where
        assemble index
            | index == 4 && yy !! 4 == 1 = "wink"
            | index == 3 && yy !! 3 == 1 = "double blink"
            | index == 2 && yy !! 2 == 1 = "close your eyes"
            | index == 1 && yy !! 1 == 1 = "jump"
            | index == 0 && yy !! 0 == 1 = "test" --reverse $ map show yy
            | otherwise = ""
-}



-- list indexing
-- yy!!index = yy[index]