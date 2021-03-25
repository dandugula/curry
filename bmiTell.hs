bmiTell :: (RealFloat w) => w -> String
bmiTell w
  | w <= 60.5 = "You're skinny"
  | w <= 80.1 = "You're healthy"
  | otherwise = "You're obese"
