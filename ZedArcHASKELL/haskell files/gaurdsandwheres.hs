import Data.List
import Data.Maybe
import Data.Char

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell w   h
      | w / h ^ 2 <= 18.5 = "low weight as per book time" 
      | w / h ^ 2 <= 25.0 = "average as of time of this book" 
      | w / h ^ 2 <= 30.0 = "overweight as per time of book" 
      | otherwise         = "obese as per the nuanced book"

bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' w   h
      | bmi <=  low   = "low weight as per book time" 
      | bmi <= middle = "average as of time of this book" 
      | bmi <=  high  = "overweight as per time of book" 
      | otherwise     = "obese as per the nuanced book"
      where bmi = w / h ^ 2
            low = 18.5
            middle = 25.0
            high = 30.0
     -- where bmi = w / h ^ 2
     --       (low, middle, high) = (18.5, 25.0, 30.0)

calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi w h |( w, h ) <- xs]
         where bmi wt ht = wt / ht ^ 2

myCompare :: (Ord a) => a -> a -> Ordering
myCompare a    b
        | a >  b     = GT
        | a == b     = EQ
        | otherwise  = LT

initials :: String -> String -> String
initials firstName lastName = [convertToUpper f]++"."++[convertToUpper l]++". "
    where (f:_) = firstName
          (l:_) = lastName

-- make this take a string and return it titlecase 
convertToUpper :: Char->Char
convertToUpper charry 
    | elem charry lowerCaseCharrys = upperCaseCharrys !! indexxer
    | otherwise                    = charry
    where lowerCaseCharrys         = ['a'..'z']
          upperCaseCharrys         = ['A'..'Z']
          indexxer                 = fromJust (elemIndex charry lowerCaseCharrys)










-- isLower can now be used - returns true or false

-- formmmrer strizzy (length strizzy)
-- formmmrer :: String -> String
-- formmmrer strizzy i
--     -- find a way to determine start of word '_fjsalkfjksa'
--     | strizzy !! 0 == isLowercase = convertToUpper (strizzy !! 0)
--     | strizzy !! i == formmmrer strizzy i 
--     | strizzy !! (i-1) == ' ' = convertToUpper strizzy !! i -- this will convert the char, but wont overwrite strizzy
--     | elem ' ' strizzy = convertToUpper (strizzy !! 0) -> 
--     where indexxer = [0..(length strizzy) ]

--     strizzy = [c | c <- convertToUpper c,  (c-1) [' ']]


--     | ' ' = (" ":_) = strizzy 
--     				convertToUpper strizzy !! 0 
--     				-- recursively call it until end of sentence



toTitleCase :: String -> String
toTitleCase str = [ convertToUpper c | (c, i) <- zip str [0..], i == 0 || (str !! (i - 1) == ' ') || not (c `elem` ['a'..'z']) ]



-- toTitleCase str = [ if i == 0 || (str !! (i - 1) == ' ') 
                    -- then convertToUpper c 
                    -- else toLower c 
                  -- [ c i | (c, i) <- zip str [0..]      ]























convertToUpper' :: Char -> Char
convertToUpper' charry = 
    case elemIndex charry lowerCaseCharrys of
        Just indexxer -> upperCaseCharrys !! indexxer
        Nothing -> charry
    where 
        lowerCaseCharrys = ['a'..'z']
        upperCaseCharrys = ['A'..'Z']
