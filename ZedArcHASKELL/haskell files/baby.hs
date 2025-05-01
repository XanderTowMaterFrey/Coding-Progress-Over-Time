rtMe me = me + me

rrUs x y = rtMe x + rtMe y

dSM x = if x > 100 
  then x
  else x * 2 + 1

dSM' x = (if x > 100 then x else x*2) + 1
-- the reason for the apostrophe is not due to this being a strict function
-- it is because the modification of the +1 being outside the if statement in place of in the else expression

-- challenge self - make this a thing that will ensure its at least 100 then double it 

to100 x
  | x == 0 = to100 $ x + 1
  | x < 0 = to100 $ abs x
  | x<=100 = to100 $ rtMe x
  | otherwise = x

