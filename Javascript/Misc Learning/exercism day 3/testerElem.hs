import Data.Char -- (toUpper \ module name for 1)

{-
it would be cool to assign these to a number so i can reference that instead of the var and then just return the number as the points, kind of like a json file but in haskell so its better -- look into arrays, i think thats what this would need to reference 
-}

onePointers = ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']
twoPointers = ['D','G']
threePointers = ['B','C','M','P']
fourPointers = ['F','H','V','W','Y']
fivePointer = 'K'
eightPointers = ['J', 'X']
tenPointers = ['Q','Z']

testFunc :: Char -> [Char] -> Bool
testFunc car cars = elem (toUpper car) cars

scoreLetter :: Char -> Integer 
scoreLetter letter
  | testFunc letter onePointers = 1
  | testFunc letter twoPointers = 2
  | testFunc letter threePointers = 3 
  | testFunc letter fourPointers = 4
  | toUpper letter == fivePointer = 5
  | testFunc letter eightPointers = 8
  | testFunc letter tenPointers = 10
  | otherwise = 0

scoreWord :: String -> Integer
scoreWord word = sum $ map scoreLetter word


-- string -> [chars]
-- char[index] -> counter ++ points
-- return points counter