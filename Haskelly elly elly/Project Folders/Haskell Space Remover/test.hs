module Main where

import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import Data.Char (isSpace)

removeSpaces :: T.Text -> T.Text
removeSpaces = T.filter (not . isSpace)

main :: IO ()
main = do
    putStrLn "Please enter the data:"
    returnStr <- do
        string2Convert <- TIO.getLine
        return $ removeSpaces string2Convert
    putStrLn "Here is the data:"
    TIO.putStrLn returnStr
