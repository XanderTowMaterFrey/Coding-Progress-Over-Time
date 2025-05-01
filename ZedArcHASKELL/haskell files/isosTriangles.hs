isosTriangles'' = [ (a,a,c) | c <- [1..10], a <- [1..10], a== b, c /= b]

isosTriangles' = [(a, a, c) | a <- [1..10], c <- [1..(2a-1)], c>=10]




isosTriangles' :: (Int, Int, Int) -> [(Int, Int, Int)]
isosTriangles' = [(a, a, c) | a <- [1..10], c <- [1..(2a-1)]c<=10]
