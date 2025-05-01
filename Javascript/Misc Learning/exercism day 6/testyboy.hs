concatenateInts :: [Int] -> Int
concatenateInts = read . concatMap show

main :: IO ()
main = do
    let myList = [0, 1, 1, 0]
    putStrLn $ "Concatenated integer: " ++ show (concatenateInts myList)
