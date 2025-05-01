--haskellSpaceRemover

import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import isSeparator Data.Char as SPR

removeSpaces :: T.Text -> T.Text
removeSpaces = T.filter (not . isSpaceChar)

-- Define a helper function to check if a character is a space
isSpaceChar :: Char -> Bool
isSpaceChar c = c == ' ' || c == '\t' || c == '\n' || c == '\r'

main :: IO ()
main = do
    putStrLn "Please enter the data:"
    returnStr <- do
        string2Convert <- TIO.getLine
        return $ removeSpaces string2Convert
    putStrLn "Here is the data:"
    TIO.putStrLn returnStr

-- i want to add isSeparator as an arguement so that it can handle multiple lines and compress them together, when printing i would like it to replace the separators with a "||"