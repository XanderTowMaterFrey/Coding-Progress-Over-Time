take2 :: (Num i , Ord i ) => i -> [a] -> [a]
take2 n _
  | n <= 0 = []
take2 _ [] = []
take2 n (x: xs ) = x : take2 (n -1) xs

replicate2 :: ( Num i , Ord i ) => i -> a -> [a]
replicate2 n x
  | n <= 0 = []
  | otherwise = x: replicate2 (n -1) x




osftaj =[1,2,3,4,5,6,7,8]
svifoeat = reverse2 osftaj


reverse2  :: [a] -> [a]
reverse2  [] = []
reverse2  (x: xs ) = reverse2  xs ++ [ x]



zip2 :: [a] -> [b] -> [(a,b)]
zip2 _ [] = []
zip2 [] _ = []
zip2 (x:xs) (y:ys) = (x,y):zip2 xs ys
