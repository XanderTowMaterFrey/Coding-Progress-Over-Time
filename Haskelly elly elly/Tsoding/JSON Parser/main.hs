module Main where

import Data.Char

-- the purpose of this parser is to strengthen my haskell skillset, i will add things noted in the comments as needed, but that will be when i am ready, that time is not now 

data JsonValue = JsonNull
               | JsonBool Bool
               | JsonNumber Integer -- NOTE: no support for floats at this time
               | JsonString String
               | JsonArray [JsonValue] -- at this point it becomes recursive (JsonValue)
               | JsonObject [(String, JsonValue)] -- (Map String JsonValue) the purpose of this parser is to strengthen my haskell skillset, when i am ready i can switch to using Map (from Data.Map) thats to improve the parser, im not there yet
               | JsonChar Char -- will need to add support for Char
               deriving (Show, Eq)

-- parser :: String -> Maybe (String, a) - Either (Int, Int, String) (String, a) - does not have proper error reporting at this time, this line can help add that - around 13-15 minutes in the video he explains the idea here
-- parser = undefined

newtype Parser a = Parser
    { runParser :: String -> Maybe (String, a)
    }

instance Functor Parser where
    fmap f (Parser p) = 
      Parser $ \input -> do
        (input', x) <- p input
        Just (input', f x)


-- restart here tomorrow chptr starts in the late 30 minutes 
instance Applicative Parser where
  pure x = Parser $ \input -> Just (input, x)
  (Parser p1) <*> (Parser p2) = 
    Parser $ \input -> do
      (input', f) <- p1 input
      (input'', a) <- p2 input'
      Just (input'', f a)




jsonNull :: Parser JsonValue
jsonNull = undefined

{-charP :: Char -> Parser Char
charP x = Parser $ \input ->
          case input of
            y:ys 
              | y == x -> Just (ys, x)
            _          -> Nothing-}

{-charP :: Char -> Parser Char
charP x = Parser f
    where 
        f input =
          case input of
               y:ys 
                | y == x -> Just (ys, x)
                      _  -> Nothing-}

charP :: Char -> Parser Char
charP x = Parser f
    where 
        f (y:ys)
          | y == x = Just (ys, x)
          | otherwise =  Nothing
        f [] = Nothing

stringP :: String -> Parser String
stringP = sequenceA . map charP

jsonValue :: Parser JsonValue
jsonValue = undefined

main :: IO ()
main = undefined
