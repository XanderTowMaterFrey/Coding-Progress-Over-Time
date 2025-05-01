import Data.Time.Calendar
import Data.Time.Calendar.WeekDate

-- List of holidays
holidays :: [(String, (Int, Int))]
holidays =
  [ ("New Years", (1, 1))
  , ("Martin Luther King Day", (3, 1))  -- Third Monday of January
  , ("Good Friday", (0, 0))             -- Date varies, calculated below
  , ("Memorial Day", (5, -1))           -- Last Monday of May
  , ("Independence Day", (7, 4))        -- July 4th
  , ("Labor Day", (9, 1))               -- First Monday of September
  , ("Veterans Day", (11, 11))          -- November 11th
  , ("Thanksgiving", (4, 4))            -- Fourth Thursday of November
  , ("Black Friday", (0, 0))            -- Date varies, calculated below
  , ("Christmas Eve", (12, 24))
  , ("Christmas", (12, 25))
  ]

-- Check if a given date is a holiday
isHoliday :: Day -> Bool
isHoliday date =
  let (year, month, dayOfMonth) = toGregorian date
      (_, week, weekday) = toWeekDate date
      isLeapYear = isLeapYearGregorian year
      goodFriday = addDays <$> Just (-2 - sundayAnchor year) <*> easterSunday year
      thanksgiving = addDays <$> Just (3 * 7 + 3 - weekday) <*> Just (fromGregorian year 11 1)
      blackFriday = addDays <$> Just (3 * 7 + 4 - weekday) <*> Just (fromGregorian year 11 1)
      holidayDates = map (\(_, (m, d)) -> fromGregorian year m d) holidays
  in (month, dayOfMonth) `elem` holidayDates ||
     (month, dayOfMonth) == (fromMaybe (0, 0) goodFriday) ||
     (month, dayOfMonth) == (fromMaybe (0, 0) thanksgiving) ||
     (month, dayOfMonth) == (fromMaybe (0, 0) blackFriday)

-- Helper function to calculate Easter Sunday
easterSunday :: Integer -> Maybe Day
easterSunday year = fromGregorianValid year m d
  where
    a = year `mod` 19
    b = year `div` 100
    c = year `mod` 100
    d = b `div` 4
    e = b `mod` 4
    f = (b + 8) `div` 25
    g = (b - f + 1) `div` 3
    h = (19 * a + b - d - g + 15) `mod` 30
    i = c `div` 4
    k = c `mod` 4
    l = (32 + 2 * e + 2 * i - h - k) `mod` 7
    m = (a + 11 * h + 22 * l) `div` 451
    n = h + l - 7 * m + 114
    month = n `div` 31
    day = (n `mod` 31) + 1

    fromGregorianValid :: Integer -> Int -> Int -> Maybe Day
    fromGregorianValid y m d = fromGregorianValid y' m' d'
      where
        (y', m', d') = toValidYearMonthDay y m d

        toValidYearMonthDay :: Integer -> Int -> Int -> (Integer, Int, Int)
        toValidYearMonthDay y m d
          | m < 1 = toValidYearMonthDay (y - 1) (m + 12) d
          | m > 12 = toValidYearMonthDay (y + 1) (m - 12) d
          | otherwise = (y, m, d)

-- Example usage: Check if a given date is a holiday
main :: IO ()
main = do
  putStrLn "Enter a date (yyyy-mm-dd):"
  inputDate <- getLine
  let [year, month, day] = map read (words inputDate)
  let date = fromGregorian year month day
  if isHoliday date
    then putStrLn "It is a holiday"
    else putStrLn "It's a normal day"
