{-
Eq is `==` and it just returns true or false if things are equal or not equal 
Ord returns the ascii number like fromEnum but for Chars
Show just shows the data
-}

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

funkyFunctionName :: Nucleotide -> Char
funkyFunctionName nucleotide = case nucleotide of
                               A -> 'a' -- first idea is to just add to a list then count length of list and return with Just list.length()
                               C -> 'c' -- this function needs to be called from a function that feeds this one a string, something like map or fmap 
                               G -> 'g'
                               T -> 't'

-- show funkyFunctionName Just A


newtype NucleoWut a = NucleoWut
    { runNucleoWut :: Char -> Maybe (Char, a)
    }

{-"AGTAAT"
then return 
a = 3
g = 1
t = 2
c = 0-}