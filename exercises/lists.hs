import Data.Data (dataTypeConstrs)
-- 1. Find the last element of a list.

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (x:xs) = myLast xs

-- 2. Find the last but one element of a list.

myLastButOne :: [a] -> a
myLastButOne [] = error "empty list"
myLastButOne [x, y] = x
myLastButOne (x:xs) = myLastButOne xs

-- 3. Find the K'th element of a list.

findK :: Int -> [a] -> a
findK _ [] = error "empty list"
findK 1 (x:_) = x
findK k (x:xs) = findK (k-1) xs

-- 4. Find the number of elements of a list.

lenght :: [a] -> Int
lenght [] = 0
lenght (x:xs) = 1 + lenght xs

-- 5.  Reverse a list.

rvrs :: [a] -> [a]
rvrs [] = []
rvrs (x:xs) = rvrs xs ++ [x]

-- 6. Find out whether a list is a palindrome.

palindrome :: String -> Bool
palindrome a 
    | lenght a < 2 = True
    | head a == myLast a = palindrome (tail (init a))
    | otherwise = False

-- 7. Flatten a nested list structure.

flattenNestedList :: [[a]] -> [a]
flattenNestedList [] = []
flattenNestedList (x:xs) = x ++ flattenNestedList xs
