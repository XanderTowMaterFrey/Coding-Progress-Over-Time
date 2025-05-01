import qualified Data.Text as T
import Data.Text (Text)

abc :: Text
abc = T.pack "abcdefghijklmnopqrstuvwxyz"

rotate :: Int -> Text -> Text
rotate rotateBy word =
    let rotatedChars = T.map (rotateChar rotateBy) word
    in T.concat (T.chunksOf 1 rotatedChars)

rotateChar :: Int -> Char -> Char
rotateChar rotateBy char =
    let charIndex = T.findIndex (== char) abc
        newIndex = case charIndex of
            Just idx -> (idx + rotateBy) `mod` T.length abc
            Nothing -> error "Character not found in alphabet"
    in T.index abc newIndex
