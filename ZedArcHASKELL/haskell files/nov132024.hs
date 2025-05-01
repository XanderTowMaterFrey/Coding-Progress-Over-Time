-- getLastChar :: String -> Char
-- getLastChar strizzy = strizzy !! pred (length strizzy)

-- getLastChar :: forall a => [a] -> a 
-- getLastChar [] = error "empty list friend"
-- getLastChar (_:x) = x


thingy :: [Integer]
thingy = [1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,92]

len :: (Num b) => [a] -> b
len [] = 0 
len (_:x) = 1 + len x

lastthing :: [a] -> a 
lastthing [] = error "empty list"
lastthing listy = listy !! (len listy - 1)

