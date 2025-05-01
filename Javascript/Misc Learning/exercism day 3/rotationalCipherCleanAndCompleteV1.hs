import qualified Data.Text as T
import Data.Text (Text)
import Data.Char
-- [erase before brackets for exercism.com submission] module RotationalCipher (rotate) where

abc :: Text
abc = T.pack "abcdefghijklmnopqrstuvwxyz"

space :: Text
space = T.singleton ' '

rotateIntake :: Int -> Text -> Text
rotateIntake rotateBy inputText -- it has to be in this order for some reason
    | T.null inputText = T.empty
    | T.head inputText == ' ' = T.append space (rotateIntake rotateBy (T.tail inputText))
    | (not $ isAlpha $ T.head inputText) = T.append (T.singleton(T.head inputText)) (rotateIntake rotateBy (T.tail inputText))
    | T.head inputText == T.head (T.toLower inputText) = T.append (T.toLower $ rotate rotateBy (T.singleton (T.head inputText))) (rotateIntake rotateBy (T.tail inputText))
    | T.head inputText == T.head (T.toUpper inputText) = T.append (T.toUpper $ rotate rotateBy (T.singleton (T.head inputText))) (rotateIntake rotateBy (T.tail inputText))
    | otherwise = error "something goofed up good mate"

rotate :: Int -> Text -> Text
rotate rotateBy inputText =
    let Just letterIndex = T.findIndex (== T.head (T.toLower inputText)) abc
        newLettersIndex = mod (letterIndex + rotateBy) 26
    in T.singleton $ T.index abc newLettersIndex

{-
V2

module RotationalCipher (rotate) where
import Data.Char(isUpper, isLower, ord, chr)
rotChar :: Int -> Char -> Char
rotChar n x
    | isUpper x     = chr $ mod (ord x - ord 'A' + n) 26 + ord 'A'
    | isLower x     = chr $ mod (ord x - ord 'a' + n) 26 + ord 'a'
    | otherwise     = x
rotate :: Int -> String -> String
rotate n = map (rotChar n)

-}