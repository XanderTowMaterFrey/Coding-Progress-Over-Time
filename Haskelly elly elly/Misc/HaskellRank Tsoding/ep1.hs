main = interact $ show . sum . map read . words

main = interact $ show . sum . map read . tail . words