rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
scaleneTriangles'' = [ (a,b,c) | c <- [1..10], b <- [1..(c-1)], a <- [1..(b-1)], a+b>c]
isosTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [b], a== b, c /= b]


-- haskell triangle types using list comprehension