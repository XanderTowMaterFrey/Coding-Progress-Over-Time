import Data.List as DL
import Data.Text
import ASCII.Char

lucky :: (Num a, Eq a)  => a -> String
-- the (Num a, Eq a) works the same as (Integral a). it needs Eq a to confirm that input x is 7 or 3 or other
lucky 7 = "Lucky Number Seven!"
lucky 3 = "mehh, not to lucky"
lucky x = "Stupid dummy, thats not a lucky number"

lucky' :: (Num a, Eq a) => a -> String
lucky' x = case x of 
                7 -> "you got lucky"
                3 -> "i hope to see reebs today"
                x -> "this is an unlucky number, uh oh"

sayMe :: (Integral a) => a-> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe 6 = "Six!"
sayMe 7 = "it is so easy to eat so much sugar bro holy shit"
sayMe x = "Not between 1 and 6"

head2FromBook :: [a] -> a
head2FromBook [] = error " No head for empty lists !"
head2FromBook (x: _) = x

head2FromBook' :: [a] -> a
head2FromBook' xs = case xs of 
                         [] -> error " No head for empty lists !"
                         (x: _) -> x

describeList1 :: [a] -> String
describeList1 xs = " The list is " ++ case xs of 
                                          [] -> " empty ."
                                          [x] -> "a singleton list . "
                                          _ -> "a longer list ."

functionName :: Text -> Text --(Forall tbd) => tbd -> tbd
functionName expression = case expression of 
                               pattern1 -> charListToText (pattern1 ++ " world")
                               pattern2 -> charListToText (pattern2 ++ " World")
                               pattern3 -> charListToText (pattern3 ++ " WORLD")
                               where pattern1 = "hello"
                                     pattern2 = "Hello"
                                     pattern3 = "HELLO"








-- use case by eod

describeList2 :: [a] -> String
describeList2 xs = " The list is " ++ what xs
                                     where what [] = " empty ."
                                           what [x] = " a singleton list"

describeList3 :: [a] -> String
describeList3 xs 
            -- | length xs == 0 = "empty" {- search :hoogle [a] -> Bool try to find more than 1 :hog -} 
             | let x = xs in DL.null x = error "uh oh spaghetti ohs" -- let to make this a let expression
             | DL.length xs == 1 = "single item"
             | otherwise = let dubbYa = show $ DL.length xs in DL.concat ["more than one item, there are ", dubbYa, " items in this"] 

             -- there is a dopeness to having an expression in the list as an item in the list
             -- | length xs >= 2 = "more than one item"
             -- | otherwise = error "uh oh spaghetti ohs" {- this does the same as the one above due to type error catching -}
