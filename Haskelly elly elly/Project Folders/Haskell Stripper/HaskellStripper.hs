--HaskellStripper.hs


import Data.Char (isSpace)

removeSpaces :: String -> String
removeSpaces = filter (not . isSpace)

main :: IO ()
main = do
    string2Convert <- getLine
    let returnStr = removeSpaces string2Convert
    putStrLn returnStr