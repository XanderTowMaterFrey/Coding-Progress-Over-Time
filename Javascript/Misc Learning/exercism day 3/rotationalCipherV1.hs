import qualified Data.Text as T
import Data.Text (Text)
import Data.Char
-- module RotationalCipher (rotate) where

abc :: Text
abc = T.pack "abcdefghijklmnopqrstuvwxyz"
-- abCap = T.pack "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

space :: Text
space = T.singleton ' '

-- isAlpha

rotateIntake :: Int -> Text -> Text
rotateIntake rotateBy inputText
    | T.null inputText = T.empty 
    | T.head inputText == ' ' = T.append space (rotateIntake rotateBy (T.tail inputText)) 
    | (not $ isAlpha $ T.head inputText) = T.append (T.singleton(T.head inputText)) (rotateIntake rotateBy (T.tail inputText)) 
    | T.head inputText == T.head (T.toUpper inputText) = T.append (T.toUpper $ rotate rotateBy (T.singleton (T.head inputText))) (rotateIntake rotateBy (T.tail inputText)) -- (T.tail inputText) add the rotate or rot intake formula here 
    | T.head inputText == T.head (T.toLower inputText) = T.append (T.toLower $ rotate rotateBy (T.singleton (T.head inputText))) (rotateIntake rotateBy (T.tail inputText))
    -- $ T.toUpper T.singleton (T.tail inputText) (rotate rotateBy (T.tail inputText)))
    -- | (T.head inputText == T.head (T.toLower inputText)) = T.append $ T.singleton (T.toLower $ rotate rotateBy (T.tail inputText)) (rotate rotateBy (T.tail inputText))
    | otherwise = error "something goofed up good mate"
        -- T.append (T.singleton(T.head inputText)) (rotateIntake rotateBy (T.tail inputText)) 

    --T.empty --T.append (T.singleton $ T.head inputText) (rotateIntake rotateBy (T.tail inputText))


{-
    | otherwise = T.empty
        let Just letterIndex = T.findIndex (== T.head (T.toLower inputText)) abc -- my instinct is to add a counter here, what about trying flip - flip wont work , it reverses arguments not bools
            newLettersIndex = mod (letterIndex + rotateBy) 26 
            newLetter = T.index abc newLettersIndex 
        in T.append (T.singleton newLetter) (rotate rotateBy (T.tail inputText)) -- i think we gotta do the conv here
}
-}

rotate :: Int -> Text -> Text
rotate rotateBy inputText =
    let Just letterIndex = T.findIndex (== T.head (T.toLower inputText)) abc -- my instinct is to add a counter here, what about trying flip - flip wont work , it reverses arguments not bools
        newLettersIndex = mod (letterIndex + rotateBy) 26 
    in T.singleton $ T.index abc newLettersIndex

    -- in T.append (T.singleton newLetter) (rotate rotateBy (T.tail inputText)) -- i think we gotta do the conv here

{-        in T.append (T.singleton newLetter) (rotate rotateBy (T.tail inputText)) -- i think this is how i need to do this, its recursion, this way i can use the tail of the inputText as the inputText to enter and then always rotate the head with a shift or some 
-}

-- it works, but it does not support capital letters 