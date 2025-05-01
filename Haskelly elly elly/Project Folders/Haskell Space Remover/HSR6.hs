module Main where

import System.Console.Haskeline
import Control.Monad.Trans (liftIO)
import Data.Char (isSpace, isSeparator)

-- Function to remove spaces, separators, and newlines
removeSpaces :: String -> String
removeSpaces = filter (\c -> not (isSpace c || isSeparator c || c == ' ' || c == '\t' || c == '\n' || c == '\r'))

-- Function to read input until Control-E is encountered
readUntilControlE :: InputT IO String
readUntilControlE = do
    liftIO $ putStrLn "Please enter the data. Press N + Return to finish input."
    input <- getInputLine ""
    case input of
        Just line -> do
            let (beforeCtrlE, afterCtrlE) = break (== 'N') line -- \ETX represents Control-E
            return $ removeSpaces beforeCtrlE
        Nothing -> return ""

main :: IO ()
main = runInputT defaultSettings $ do
    input <- readUntilControlE
    liftIO $ putStrLn "\nHere is the data: "
    liftIO $ putStrLn input
