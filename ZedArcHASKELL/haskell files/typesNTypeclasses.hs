removeNonUppercase :: String->String
removeNonUppercase st = [c|c<- st, elem c ['A'..'Z']]

removeNonLowercase :: String->String
removeNonLowercase st = [c|c<-st,elem c ['a'..'z']]

addThree :: Num a => a-> a-> a-> a
addThree  x y z = x + y + z

factorial' :: Integer -> Integer
factorial' n = product [1..n]

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)
--factorial 5 = 5 * factorial 4 * factorial 3 * factorial 2 * factorial 1 * factorial 0 (1)

addVectors' :: Num a =>(a,a)->(a,a)->(a,a)
addVectors' x y = (fst x + fst y, snd x + snd y)

addVectors :: Num a => (a,a) -> (a,a) -> (a,a)
addVectors (x1,y1) (x2,y2) = (x1+x2, y1+y2)

trifst :: (a,b,c) -> a
trifst (a,_,_) = a

trisnd :: (a,b,c) -> b
trisnd (_,b,_) = b

tritrd :: (a,b,c) -> c
tritrd (_,_,c) = c

fst' :: (a,b)->a
fst' (a,b) = a

snd' :: (a,b)->b
snd' (a,b) = b

head' :: [a] -> a
head' [] = error "The list you provided is empty"
head' (x:_) = x
-- its neat to me that it takes in a tuple
-- it makes a certain amount of sense as it takes in a defined type [a]
-- whats wild is that it can take in a list of any quantity

tail' :: [a] -> [a]
tail' (x:xs) = xs
-- i forgot about the cons operator to make a list - [1,2,3,4] = (1:2:3:4)

-- length' :: Num a => [t] -> a -- this is the original from ghci -- its neat to me that it uses a and t as opposed to b and a
-- it almost makes more sense to me to define it as a and t
-- length' :: (Num b) => [a] -> b
length' :: Num a => [t] -> a
length' xs = sum [1 | _ <- xs]
