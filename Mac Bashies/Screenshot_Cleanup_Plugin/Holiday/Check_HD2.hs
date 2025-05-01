import Data.Time.Calendar
import Data.Time.Calendar.WeekDate
import Data.Maybe (fromMaybe)

-- List of holidays
holidays :: [(String, (Int, Int))]
holidays =
  [ ("New Years", (1, 1))
  , ("Martin Luther King Day", (1, 0))  -- Third Monday of January
  , ("Good Friday", (0, 0))             -- Date varies, calculated below
  , ("Memorial Day", (5, -1))           -- Last Monday of May
  , ("Independence Day", (7, 4))        -- July 4th
  , ("Labor Day", (9, 1))               -- First Monday of September
  , ("Veterans Day", (11, 11))          -- November 11th
  , ("Thanksgiving", (11, 4))           -- Fourth Thursday of November
  , ("Black Friday", (11, 5))           -- The day after Thanksgiving
  , ("Christmas Eve", (12, 24))
  , ("Christmas", (12, 25))
  ]

-- Check if a given date is a holiday
isHoliday :: Day -> Bool
isHoliday date =
  let (year, month, dayOfMonth) = toGregorian date
      (_, _, weekday) = toWeekDate date
      holidayDates = map (\(_, (m, d)) -> (m, d)) holidays
      goodFriday = addDays (-2 - sundayAnchor year) <$> easterSunday year
      thanksgiving = addDays (3 * 7 + 3 - fromIntegral weekday) (fromGregorian year 11 1)
      blackFriday = addDays (3 * 7 + 4 - fromIntegral weekday) (fromGregorian year 11 1)
  in (month, dayOfMonth) `elem` holidayDates ||
     (month, dayOfMonth) == fromMaybe (0, 0) goodFriday ||
     (month, dayOfMonth) == fromMaybe (0, 0) thanksgiving ||
     (month, dayOfMonth) == fromMaybe (0, 0) blackFriday

-- Check if a given year is a leap year
isLeapYearGregorian :: Integer -> Bool
isLeapYearGregorian year
  | year `mod` 4 /= 0 = False
  | year `mod` 100 /= 0 = True
  | year `mod` 400 /= 0 = False
  | otherwise = True

-- Calculate the number of days from Sunday to the Easter Sunday anchor
sundayAnchor :: Integer -> Integer
sundayAnchor year = (24 - k) `mod` 31
  where
    k = 5 * (year `mod` 4) + 4 * (year `mod` 7) + 6

-- Calculate Easter Sunday for a given year
easterSunday :: Integer -> Maybe Day
easterSunday year = fromGregorianValid year (fromIntegral (3 + q)) (fromIntegral (21 + r))
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
    q = h + l - 7 * m + 114
    r = q `mod` 31

-- Example usage: Check if a given date is a holiday
main :: IO ()
main = do
  putStrLn "Enter a date (yyyy-mm-dd):"
  inputDate <- getLine
  let [year, month, day] = map read (words inputDate)
  let date = fromGregorian (fromIntegral year) month day
  if isHoliday date
    then putStrLn "It is a holiday"
    else putStrLn "It's a normal day"
