-- i think this is the one i got to work, i will revisit this later

module Main where

import System.Console.Haskeline
import Control.Monad.Trans (liftIO)
import Data.Char (isSpace, isSeparator)

-- Function to remove spaces, separators, and newlines
removeSpaces :: String -> String
removeSpaces = filter (\c -> not (isSpace c || isSeparator c || c == '\n' || c == '\r'))

-- Function to read input until Control-E is encountered
readUntilControlE :: InputT IO String
readUntilControlE = do
    liftIO $ putStrLn "Please enter the data. Enter N + Return to finish input."
    input <- getInput
    case input of
        Just 'N' -> return ""
        Just c -> do
            rest <- readUntilControlE
            return $ c : rest
        Nothing -> return ""

main :: IO ()
main = runInputTBehavior defaultSettings behavior $ do
    input <- readUntilControlE
    liftIO $ putStrLn "\nHere is the data: "
    liftIO $ putStrLn (removeSpaces input)
  where
    behavior = useFileHandle stdin
