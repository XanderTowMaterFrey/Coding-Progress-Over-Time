module Main where

import System.Console.Haskeline
import Control.Monad.Trans (liftIO)
import Data.Char (isSpace, isSeparator)

-- Function to remove spaces, separators, and newlines
removeSpaces :: String -> String
removeSpaces = filter (\c -> not (isSpace c || isSeparator c || c == '\n'))

-- Function to read input until the ending sequence is encountered
readUntilEnding :: InputT IO String
readUntilEnding = do
    liftIO $ putStrLn "Please enter the data. Press Control-D to finish input."
    lines <- lines <$> getInputLine ""
    if null lines
        then return ""
        else do
            rest <- readUntilEnding
            return $ removeSpaces (unlines lines) ++ rest

main :: IO ()
main = runInputT defaultSettings $ do
    input <- readUntilEnding
    liftIO $ putStrLn "\nHere is the data: "
    liftIO $ putStrLn input
