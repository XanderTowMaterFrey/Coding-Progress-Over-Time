module Main where

import System.Console.Haskeline
import Control.Monad.Trans (liftIO)
import Data.Char (isSpace, isSeparator)

-- Function to remove spaces, separators, and newlines
removeSpaces :: String -> String
removeSpaces = filter (\c -> not (isSpace c || isSeparator c || c == '\n'))

-- Function to read input until Control-E is encountered
readUntilControlE :: InputT IO String
readUntilControlE = do
    liftIO $ putStrLn "Please enter the data. Press Control-E (^E) to finish input."
    input <- getInputChar
    case input of
        Just '\ETX' -> return ""  -- \ETX represents Control-E
        Just c -> do
            rest <- readUntilControlE
            return $ c : rest
        Nothing -> return ""

main :: IO ()
main = runInputT defaultSettings $ do
    input <- readUntilControlE
    liftIO $ putStrLn "\nHere is the data: "
    liftIO $ putStrLn (removeSpaces input)
