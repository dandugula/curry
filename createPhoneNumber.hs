module CreatePhoneNumber where
createPhoneNumber :: [Int] -> String
--createPhoneNumber l = "(" ++ show (l !! 0) ++ show (l !! 1) ++ show (l !! 2) ++ ") "
createPhoneNumber l = splitAt 3 l
