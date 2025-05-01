module Main where

import Data.Char (isSpace, isSeparator)

-- Function to remove spaces, separators, and newlines
removeSpaces :: String -> String
removeSpaces = filter (\c -> not (isSpace c || isSeparator c || c == ' ' || c == '\t' || c == '\n' || c == '\r'))

-- Function to read input until the ending sequence is encountered
readUntilEnding :: Char -> IO String
readUntilEnding ending = do
    input <- getChar
    if input == ending
        then return ""
        else do
            rest <- readUntilEnding ending
            return $ removeSpaces [input] ++ rest

main :: IO ()
main = do
    putStrLn "Please enter the data. Enter 'N' to finish input:"
    input <- readUntilEnding 'N'
    putStrLn "\nHere is the data: "
    putStrLn input
