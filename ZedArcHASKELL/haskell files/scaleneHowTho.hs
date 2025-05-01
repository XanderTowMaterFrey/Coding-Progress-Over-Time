scaleneTriangles'' = [ (a,b,c) | c <- [1..10], b <- [1..(c-1)], a <- [1..(b-1)], a+b>c]
length scaleneTriangles''
50
scaleneTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..(c-1)], a <- [1..(b-1)], a/= b,  b /= c, c /= b]
length scaleneTriangles'
120
scaleneTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a/= b,  b /= c, c /= b, a+b>c]
length scaleneTriangles
120



by doing

a/= b,  b /= c, c /= b

it ensures that
[1..(c-1)], a <- [1..(b-1)] is met

c     | b    | a
1..10 | 1..c | 1..b
1     | 1      | 1
2     | 1,2    | 1; 1,2
3     | 1,2,3  | 1; 1,2; 1,2,3
4     | 1,2,3,4| 1; 1,2; 1,2,3; 1,2,3,4

on 4, it cannot be 4 for the second number, c-1 prevents that
on 4, it cannot be 4 for the third number, b-1 prevents that
on 4, if b is 3, it is (4,3,x ) it can go above 4,
i do wonder if 1, 2, 10 is accounted for


i suppose so as it would be 10, 2, 1, its out of order but it is still a triangle

so why must a+b>c ?
