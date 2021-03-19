createPhoneNumber :: [Int] -> String 
createPhoneNumber l = do 
  let t = splitAt 3 l
  let o = splitAt 3 $ snd t
  let a = foldl (++) "" $ map show $ fst t 
  let b = foldl (++) "" $ map show $ fst o 
  let c = foldl (++) "" $ map show $ snd o 
  "(" ++ a ++ ") " ++ b ++ "-" ++ c
                      
