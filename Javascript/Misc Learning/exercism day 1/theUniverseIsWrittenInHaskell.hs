-- Define the number of hours per day as a constant
hoursPerDay :: Float
hoursPerDay = 8.0

daysInAMonth :: Int
daysInAMonth = 22

-- Define the dayRate function
dayRate :: Float -> Float
dayRate hourlyRate =  hoursPerDay * hourlyRate
daysInBudget :: Float -> Float -> Int
daysInBudget fixedBudget hourlyRate = floor (fixedBudget / dayRate hourlyRate) 


-- 



{-


-}

{-
priceWithMonthlyDiscount :: Int -> Float -> Float -> Float
priceWithMonthlyDiscount daysWorkin hoursPerDay discountAmount =
let	internalDayRate = dayRate hoursPerDay
internalMonthyRate = internalDayRate * daysInAMonth
monthCalculator = daysWorkin / daysInAMonth
costPerMonthAfterDiscount = (1 - discountAmount) * internalMonthyRate
costForAllMonthsAfterDiscount = floor costPerMonthAfterDiscount * internalMonthyRate
amountOfNonDiscountedDays = daysWorkin `mod` daysInAMonth
costForAllNonDiscountedDays = amountOfNonDiscountedDays * internalDayRate
in costForAllMonthsAfterDiscount + costForAllNonDiscountedDays
-}

priceWithMonthlyDiscount :: Int -> Float -> Float -> Float
priceWithMonthlyDiscount daysWorking hoursPerDay discountAmount =
    let internalDayRate = dayRate hoursPerDay
        internalMonthyRate = internalDayRate * fromIntegral daysInAMonth  -- Assuming daysInAMonth is defined elsewhere
        monthCalculator = fromIntegral (daysWorking `div` daysInAMonth)
        --flooredMonths = floor monthCalculator
        costPerMonthAfterDiscount = (1 - discountAmount) * internalMonthyRate
        --costForAllMonthsAfterDiscount = fromIntegral (floor costPerMonthAfterDiscount) * monthCalculator -- its here, it was a rounding error
        costForAllMonthsAfterDiscount = costPerMonthAfterDiscount * monthCalculator
        amountOfNonDiscountedDays = daysWorking `mod` daysInAMonth
        costForAllNonDiscountedDays = fromIntegral amountOfNonDiscountedDays * internalDayRate
    in costForAllMonthsAfterDiscount + costForAllNonDiscountedDays



 
main :: IO ()
main = do
    let days = 220
        hoursPerDay = 29.654321
        discountAmount = 0.112
    putStrLn "Debug prints:"
    print (dayRate hoursPerDay)
    print (dayRate hoursPerDay * fromIntegral daysInAMonth)
    print (floor(fromIntegral days / fromIntegral daysInAMonth))
    print ((1 - discountAmount) * (dayRate hoursPerDay * fromIntegral daysInAMonth))
    let jimmy =  (fromIntegral (floor ((1 - discountAmount) * (dayRate hoursPerDay * fromIntegral daysInAMonth))))
    let timmy = floor(fromIntegral days / fromIntegral daysInAMonth)
    let terry = jimmy*timmy
    print (terry)
    print (days `mod` daysInAMonth)
    print (fromIntegral (days `mod` daysInAMonth) * dayRate hoursPerDay)
    putStrLn "Result:"
    print (priceWithMonthlyDiscount days hoursPerDay discountAmount)
