--Cool, it works. How about if we wanted all numbers from 50 to 100 whose
--remainder when divided with the number 7 is 3?

--[x|x <- [50..100] , mod x 7 == 3]

--if this is ran in the terminal it works 


boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x<- xs, odd x]
-- this works because xs is a list so its already in []

length' xs = sum [1 | _ <- xs]
-- interesting how xs is a character here 'a' not "a"
