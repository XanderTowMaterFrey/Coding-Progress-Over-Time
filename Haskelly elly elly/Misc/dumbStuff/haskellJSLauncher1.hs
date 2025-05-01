{-# LANGUAGE OverloadedStrings #-}

import System.Process (callProcess)
import System.Exit (exitFailure)

main :: IO ()
main = do
    let jsScriptPath = "~/Documents/Source/fork-of-bean-starter-kit/unrelated tests/2assertTestNoComment.js"  -- Change this to your actual JS script path
    result <- try (callProcess "node" [jsScriptPath]) :: IO (Either SomeException ())
    case result of
        Left _ -> do
            putStrLn "Failed to launch the JavaScript script."
            exitFailure
        Right _ -> return ()