-- 1. Find the last element of a list.

myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs

-- 2. Find the last but one element of a list.
myLastButOne :: [a] -> a
myLastButOne [x, y] = x
myLastButOne (x:xs) = myLastButOne xs