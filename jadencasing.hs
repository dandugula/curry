module JadenCasing where
import qualified Data.Char as Char

-- Recursive logic
capitalizeFirstChar :: String -> String
capitalizeFirstChar [] = []
capitalizeFirstChar (head:tail) = Char.toUpper head : lowered tail
  where
    lowered [] = []
    lowered(head:tail) = Char.toLower head : lowered tail

toJadenCase :: String -> String
toJadenCase js = unwords $ map capitalizeFirstChar $ words js
