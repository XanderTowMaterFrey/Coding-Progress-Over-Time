module RotationalCipher (rotate) where

import Data.Char (isAlpha)
import Data.Maybe (fromJust)

rotation :: Int -> [(Char, Char)]
rotation n = lower' ++ upper'
  where
    lower = ['a' .. 'z']
    upper = ['A' .. 'Z']
    lower' = zip lower (drop n lower ++ take n lower)
    upper' = zip upper (drop n upper ++ take n upper)

mapChar :: [(Char, Char)] -> Char -> Char
mapChar values chr
  | isAlpha chr = fromJust $ chr `lookup` values
  | otherwise = chr

rotate :: Int -> String -> String
rotate n message = map (mapChar rotation') message
  where
    rotation' = rotation n


---


module RotationalCipher (rotate) where
import Data.Char(isUpper, isLower, ord, chr)
rotChar :: Int -> Char -> Char
rotChar n x
    | isUpper x     = chr $ mod (ord x - ord 'A' + n) 26 + ord 'A'
    | isLower x     = chr $ mod (ord x - ord 'a' + n) 26 + ord 'a'
    | otherwise     = x
rotate :: Int -> String -> String
rotate n = map (rotChar n)


---


module RotationalCipher (rotate) where
import Data.Maybe (fromMaybe)
rotate :: Int -> String -> String
rotate n = map (\c -> fromMaybe c $ lookup c t)
  where t = concatMap (\a -> zip a $ drop n $ cycle a) [['A'..'Z'], ['a'..'z']]



---


module RotationalCipher (rotate) where
import Data.Char
cipherLower x n = chr ( ord 'a' + mod (ord x - ord 'a' + n) 26)
cipherUpper x n = chr ( ord 'A' + mod (ord x - ord 'A' + n) 26)
rotate :: Int -> String -> String
rotate n [] = []
rotate n (x:xs) 
  | isLower x = cipherLower x n:(rotate n xs)
  | isUpper x = cipherUpper x n:(rotate n xs)
  | otherwise = x:rotate n xs

---



module RotationalCipher (rotate) where
import           Data.Char
rotate :: Int -> String -> String
rotate n = map (\l -> if isLetter l
                          then if l <= 'Z'
                                then chr (ord 'A' + (n + ord l - ord 'A') `mod` 26)
                                else chr (ord 'a' + (n + ord l - ord 'a') `mod` 26)
                          else l)

---


odule RotationalCipher (rotate) where
import Data.Char
rotate :: Int -> String -> String
rotate n s =
  map (cipher n) s
  where cipher n c | isUpper c = chr (((ord c - ord 'A' + n) `mod` 26) + ord 'A')
                   | isLower c = chr (((ord c - ord 'a' + n) `mod` 26) + ord 'a')
                   | otherwise = c




---



Copy solution
module RotationalCipher (rotate) where
import Data.Char
rotateChar :: Int -> Char -> Char
rotateChar n c | isUpper c = chr $ (ord 'A') + (ord c - ord 'A' + n) `mod` 26
               | isLower c = chr $ (ord 'a') + (ord c - ord 'a' + n) `mod` 26
               | otherwise = c
rotate :: Int -> String -> String
rotate n = fmap $ rotateChar n