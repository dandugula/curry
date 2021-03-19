-- Everyone is talking about gentle introduction to Haskell.
-- So this is this is it.
-- Imports
import Data.List

-- Types
-- Bool, Int, Integer, Float, Double, Char, [Char], Tuples ()
-- :: Bool
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)
-- :: Int
-- Whole number -2^63 - 2^63
maxInt = maxBound :: Int

-- :: Integer
-- Unbounded Whole Number
numFive :: Integer
numFive = 5
numFive' = 5.0 :: Float
boolFive = 5 < 4

-- myFloat :: Float
myFloat = 1.0 + 2.5

myDouble = 1.55555555555 + 0.00000000001

-- :: Char
singleChar = 'a'
myName :: [Char]
myName = "Chaitanya"
myName' = ['C', 'h', 'a', 'i', 't', 'u']

-- MATH
addNum = 3 + 6
modNum = mod 9 2
modNum' = 9 `mod` 2

addNeg = 4 + (-4)

truncDouble = truncate myDouble

squareFive = sqrt numFive'

-- LISTS
numList = [1,2,3,4,5]
rangeList = [1..5]
alphaList = ['a'..'z']
oddNums = [1,3..20]

sumNumList = sum [1..5]
sumNumList' = sum numList
prodNumList = product numList

elemList = elem 5 numList
elemList' = 5 `elem` numList

fibNumbers = [1,1,2,3,5,8]
moreFibs = [13,21,34,55,89,144]
combineFibs = fibNumbers ++ moreFibs

maxFib = maximum combineFibs
minFib = minimum combineFibs

twoLists = [fibNumbers, moreFibs]

myZip = zipWith (+)  [1, 2, 3, 4, 5] [6, 7, 8, 9, 10]
zipFibs = zipWith (+) fibNumbers moreFibs

infOdds = [1,3..]
takeOdds = take 20 infOdds
infFives = repeat 5
takeFives = take 20 infFives
replFives = 20 `replicate` 5
takeCycle = take 50 $ cycle [1,2,3,4,5,6,7,8,9,10]
dropFibs = drop 5 combineFibs

filterFibs = filter (>5) combineFibs
whileFibs = takeWhile (<=88) combineFibs

mapList = map (+2) [1..10]

multiList = foldr (*) 1[2,3,4,5]
-- flodr f e ([])
-- 2 * (3 * 4 * (5 * 1)))
minusList = foldl (-) 1 [2,3,4,5]
-- (((((1) - 5) -4) -3) -2)
consList = 1 : 2 : 3 : 4 : 5 :  []

infFibs = 0 : 1 : zipWith (+) infFibs (tail infFibs)
femFibs = take 5 infFibs

listFunc = [x * y | x <- [1..5], y <- [1..5]]
listFunc' = [x * y | x <- [1..5], y <- [1..5], x * y `mod` 3 == 0]

-- TUPLES
myTuple = ("Chaitanya Dandugula", 1)
getName = fst myTuple
getID = snd myTuple

add a b = a+b
multiply a b = a*b
func a b c = add (multiply a b) c

sayHello = "Hello, World!"

nonUpperCase ::  [Char] -> [Char]
nonUpperCase s = [c | c <- s, elem c ['a'..'z']]

createPhoneNumber l = do 
                      let s = splitAt 3 l
                      let first = fst s
                      let sec = snd s 
                      foldl (++) "(" (map show first) ++ ")" ++ foldl (++) " " (map show (fst $ splitAt 3 sec)) ++ "-" ++ foldl (++) "" (map show (snd $ splitAt 3 sec))

main = do
  let s = nonUpperCase "Chaitanya Is The Best!"
  print(s)
