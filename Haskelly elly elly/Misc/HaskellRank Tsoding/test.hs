
isPangram :: String -> Bool
isPangram text =
               | true if length var3 == 26
               | otherwise return false
               let var1 = length $ nub $ filter isUpper $ filter isAlpha $ map toLower text
               let var2 = length $ nub $ filter isLower $ filter isAlpha $ map toLower text
let var3 = var1 + var2 

isPangram :: String -> Bool
isPangram text =
  let var1 = length $ nub $ filter isUpper $ filter isAlpha $ map toLower text
      var2 = length $ nub $ filter isLower $ filter isAlpha $ map toLower text
      var3 = var1 + var2
  in var3 == 26



-- i want to enable that highlighting in mine and also the red highlight for whitespace and such 
-- also fix home and end in the shortcuts 