cylinderArea :: (RealFloat a) => a -> a -> a
cylinderArea r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in sideArea + 2 * topArea

-- [ let square x = x * x in ( square 5, square 3 , square 2)]


calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi w h |( w, h ) <- xs]
         where bmi wt ht = wt / ht ^ 2

calcBmis' :: (RealFloat a) => [(a,a)] -> [a]
calcBmis' xs = [bmi | (w,h) <- xs, let bmi = w / h ^2]




-- dubbya = 4 * ( let a = 9 in a + 1) + 2

-- this allows you to easily modify a variable in a line of code


returnTheAnswer :: (Num number) => number -> number -> number -> number
returnTheAnswer a b c = (a * a * a) + (a*b*c*(c*c*c*b)) 

-- a+1 is dumb, but imagine 
jeffFuhFuh :: (Num a, Eq a) => [a] -> Bool
jeffFuhFuh listyPoodle = elem (let a =9; b = 8; c = 7 in returnTheAnswer a b c ) listyPoodle


quadfst :: (a,b,c,d) -> a
quadfst (a,_,_,_) = a

quadsnd :: (a,b,c,d) -> b
quadsnd (_,b,_,_) = b

quadtrd :: (a,b,c,d) -> c
quadtrd (_,_,c,_) = c

quadfth :: (a,b,c,d) -> d
quadfth (_,_,_,d) = d
