{-
module Hamming (distance) where

distance :: String -> String -> Maybe Int
(\(x,x) -> remove (list index)(list index+1))
  where map str1 str2

dleng :: [String]
dleng var
length $nub var
-}

{-
module Hamming (distance) where

distance :: String -> String -> Maybe Integer
distance [] [] = Just 0
distance (x:xs) (y:ys) = (+) <$> isDifferent x y <*> distance xs ys
distance _ _ = Nothing

isDifferent :: Char -> Char -> Maybe Integer
isDifferent x y
  | x == y    = Just 0
  | otherwise = Just 1
-}

module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance str1 str2 = if length str1 == length str2 then
                        Just (length (filter (/= 0) (map (\(x, y) -> if x == y then 0 else 1) (zip str1 str2))))
                      else
                        Nothing

{-

module Hamming (distance) where

distance :: String -> String -> Maybe Int; distance str1 str2 = if length str1 == length str2 then Just (length (filter (/= 0) (map (\(x, y) -> if x == y then 0 else 1) (zip str1 str2)))) else Nothing

-}