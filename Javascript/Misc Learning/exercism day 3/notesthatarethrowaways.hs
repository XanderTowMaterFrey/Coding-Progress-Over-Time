
{-
    let letterIndex = T.findIndex (== T.head inputText) abc
        newLettersIndex = case letterIndex of
            Just idx -> idx + rotateBy
            Nothing -> error "youre a bitch"
        newLetter = T.index abc (newLettersIndex `mod` T.length abc)
        restWord = T.tail inputText
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