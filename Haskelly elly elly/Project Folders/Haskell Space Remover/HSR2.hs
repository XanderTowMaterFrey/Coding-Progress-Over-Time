module Main where


-- haskell space remover 2
-- this one should remove seperators like lines and such

import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import Data.Char (isSpace, isSeparator)

removeSpaces :: T.Text -> T.Text
removeSpaces = T.filter (\c -> not (isSpace c || isSeparator c || c == ' ' || c == '\t' || c == '\n' || c == '\r'))


main :: IO ()
main = do
    putStrLn "Please enter the data:"
    returnStr <- do
        string2Convert <- TIO.getLine
        return $ removeSpaces string2Convert
    putStrLn "\nHere is the data: "
    TIO.putStrLn returnStr