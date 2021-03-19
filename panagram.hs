module Pangram where
import Data.List
import Data.Char

isPangram :: String -> Bool
isPangram str = ['a'..'z'] == (sort $ nub $ map toLower $ filter isAlpha str)
