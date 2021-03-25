module SquareDigit where
import Data.Char

splitDigit :: Int -> [Int]
splitDigit 0 = []
splitDigit x = splitDigit ( x `div` 10 ) ++ [ x `mod` 10] 

squareDigit :: Int -> Int 
squareDigit d = read $ foldl (++) "" $ map (show) $ map (^2) $ splitDigit d :: Int 

