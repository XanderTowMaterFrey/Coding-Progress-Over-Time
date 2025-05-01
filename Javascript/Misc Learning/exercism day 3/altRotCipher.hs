import qualified Data.Text as T
import Data.Text (Text)
import Data.Char

abc :: Text
abc = T.pack "abcdefghijklmnopqrstuvwxyz"

rotateIntake :: Int -> Text -> Text
rotateIntake rotateBy inputText = -- it has to be in this order for some reason
    let runner = what2Run inputText
        newletter = whatsItDoing runner rotateBy inputText -- returns the letter 
        restWord = rotateIntake rotateBy $ T.tail inputText
    in  rotateIntake rotateBy $ T.append newletter restWord
    
what2Run :: Text -> Int
what2Run idk 
    case (T.head idk) of 
        T.null idk -> 0
        idk /= isAlpha -> 4
        idk == isUpper -> 2 

whatsItDoing :: Int -> Int -> Text -> Text
whatsItDoing itsDoingThisNumber rotateBy textGettingDone
    | itsDoingThisNumber == 0 = T.empty
    | itsDoingThisNumber == 4 = rotateIntake rotateBy $ T.tail textGettingDone
    | itsDoingThisNumber == 2 = T.toUpper $ haskellPlsDoThis rotateBy textGettingDone

haskellPlsDoThis :: Int -> Text -> Text
haskellPlsDoThis rotateBy inputText
    rotate rotateBy $ T.singleton(T.head inputText)

rotate :: Int -> Text -> Text
rotate rotateBy inputText =
    let Just letterIndex = T.findIndex (== T.head (T.toLower inputText)) abc
        newLettersIndex = mod (letterIndex + rotateBy) 26
    in T.singleton $ T.index abc newLettersIndex