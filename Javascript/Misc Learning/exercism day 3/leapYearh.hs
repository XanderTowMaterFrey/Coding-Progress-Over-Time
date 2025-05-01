module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year
  | year `mod` 4 == 0 && (year `mod` 100 /= 0 || year `mod` 400 == 0 ) = True
  | otherwise = False

var `elem` list

{-
figure out why its in backticks and if thats needed
-}

{-

echo >> ~/.ghci ':def hoogle \x -> return $ ":!hoogle \"" ++ x ++ "\""'


echo >> ~/.ghci ':def doc \x -> return $ ":!hoogle --info \"" ++ x ++ "\""'


-}