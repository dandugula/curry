createPhoneNumber :: [Int] -> String 
createPhoneNumber l = do 
  let a = foldl (++) "" $ map show $ fst $ splitAt 3 l
  let b = foldl (++) "" $ map show $ fst $ splitAt 3 $ snd $  splitAt 3 l
  let c = foldl (++) "" $ map show $ snd $ splitAt 3 $ snd $  splitAt 3 l
  "(" ++ a ++ ") " ++ b ++ "-" ++ c
                      
