module RotationalCipher (rotate) where
import qualified Data.Text as T
import Data.Text (Text)
import Data.Char

abc :: Text
abc = T.pack "abcdefghijklmnopqrstuvwxyz"

space :: Text
space = T.singleton ' '


rotate :: Int -> Text -> Text
rotate rotateBy inputText -- i put it in order of whats most likely to happen since its lazy in evaluation \ does not work on \n input at this time
    | T.head inputText == T.head (T.toLower inputText) = T.append (T.toLower $ shiftLetterByN rotateBy (T.singleton (T.head inputText))) (rotate rotateBy (T.tail inputText))
    | T.head inputText == ' ' = T.append space (rotate rotateBy (T.tail inputText))
    | T.head inputText == T.head (T.toUpper inputText) = T.append (T.toUpper $ shiftLetterByN rotateBy (T.singleton (T.head inputText))) (rotate rotateBy (T.tail inputText))
    | (not $ isAlpha $ T.head inputText) = T.append (T.singleton(T.head inputText)) (rotate rotateBy (T.tail inputText))
    | T.null inputText = T.empty
    | otherwise = error "something goofed up good mate"

shiftLetterByN :: Int -> Text -> Text
shiftLetterByN rotateBy inputText =
    let Just letterIndex = T.findIndex (== T.head (T.toLower inputText)) abc
        newLettersIndex = mod (letterIndex + rotateBy) 26
    in T.singleton $ T.index abc newLettersIndex