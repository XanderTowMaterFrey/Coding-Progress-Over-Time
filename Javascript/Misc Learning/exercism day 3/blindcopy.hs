import qualified Data.Text as T
import Data.Char

abc :: T.Text
abc = T.pack "abcdefghijklmnopqrstuvwxyz"

rotateIntake :: Int -> T.Text -> T.Text
rotateIntake rotateBy inputText =
    let runner = what2Run inputText
        newletter = whatsItDoing runner rotateBy inputText
        restWord = rotateIntake rotateBy (T.tail inputText)
    in T.append newletter restWord
    
what2Run :: T.Text -> Int
what2Run idk 
    | T.null idk = 0
    | not (T.all isAlpha idk) = 4
    | T.any isUpper idk = 2
    | otherwise = error "Unexpected character"

whatsItDoing :: Int -> Int -> T.Text -> T.Text
whatsItDoing itsDoingThisNumber rotateBy textGettingDone
    | itsDoingThisNumber == 0 = T.empty
    | itsDoingThisNumber == 4 = rotateIntake rotateBy (T.tail textGettingDone)
    | itsDoingThisNumber == 2 = T.toUpper (haskellPlsDoThis rotateBy textGettingDone)

haskellPlsDoThis :: Int -> T.Text -> T.Text
haskellPlsDoThis rotateBy inputText =
    rotate rotateBy (T.singleton (T.head inputText))

rotate :: Int -> T.Text -> T.Text
rotate rotateBy inputText =
    let Just letterIndex = T.findIndex (== T.toLower (T.head (T.unpack inputText))) abc
        newLettersIndex = mod (letterIndex + rotateBy) (T.length abc)
    in T.singleton (T.index abc newLettersIndex)
