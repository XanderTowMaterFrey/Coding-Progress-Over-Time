import qualified Data.Text as T
import Data.Text (Text)
--module RotationalCipher (rotate) where
--pack if needed

abc :: Text
abc = T.pack "abcdefghijklmnopqrstuvwxyz"

space :: Text
space = T.singleton ' '

-- this works but the spaces dont get added right and in general idk if it works right, but the letters get changed

rotate :: Int -> Text -> Text
rotate rotateBy word  
    | T.null word = T.empty
    | T.head word == ' ' = T.append (rotate rotateBy (T.tail word)) space
--word = T.tail word && newWord = T.append space word
    
    | otherwise =
        let Just letterIndex = T.findIndex (== T.head word) abc
            newLettersIndex = (letterIndex + rotateBy) `mod` T.length abc
            newLetter = T.index abc newLettersIndex
        in T.append (T.singleton newLetter) (rotate rotateBy (T.tail word))
        --in newWord
        --newWord = T.append newLetter word

{-
    let letterIndex = T.findIndex (== T.head word) abc
        newLettersIndex = case letterIndex of
            Just idx -> idx + rotateBy
            Nothing -> error "youre a bitch"
        newLetter = T.index abc (newLettersIndex `mod` T.length abc)
        restWord = T.tail word
    in jim = T.append newLetter restWord  
-}

	--append
	--uncons
	--head - returns the first character of the text 
	--index


	--text -> text -> text
	--isalpha checks if its the alphabet
		-- i can store my own, if theres one there then thats 
			--findindices

			{-
so if i store the alphabet as list then i can use findindices to find the letters index
	then i can add the introtateby to that indice and return the new index
		then i can append that to a new string of text and return that as teh new answer 
			-}