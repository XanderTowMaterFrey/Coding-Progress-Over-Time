import Data.Char (toUpper)

-- Partial application of elem
checkElem :: Char -> String -> Bool
checkElem a x = flip elem x a

-- Function composition with toUpper
checkElemToUpper :: Char -> String -> Bool
checkElemToUpper = checkElem . toUpper 