import Data.Char(isUpper, isLower, ord, chr)
rotateLetter :: Int -> Char -> Char
rotateLetter rotateBy letter
    | isUpper letter = daRotater rotateBy letter 0
    | isLower letter = daRotater rotateBy letter 1
    | otherwise = x
daRotater :: Int -> Char -> Int -> Char
daRotater rotateBy letter iD
    | iD == 0 = chr $ mod (ord x - ord 'A' + n) 26 + ord 'A'
    | iD == 1 = chr $ mod (ord x - ord 'a' + n) 26 + ord 'a'
rotate :: Int -> String -> String
rotate rotateBy = map (rotateLetter rotateBy)