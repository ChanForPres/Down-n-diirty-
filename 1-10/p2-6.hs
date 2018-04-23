--  Find the 2nd to last element of a list.
-- [1,1,1]



-- [1,1,1] x = 1
-- [1,1] x = 1
-- [1] return 1
-- myButLast :: [x] -> y -> x
myButLast' (h:t) y 
    | null t = [] --given empty list
    | not ( null ( t )) = y   -- error on y value, trying to return
    | otherwise = myButLast' ( t ) ( h )

myButLast :: [a] -> Maybe a
myButLast (x:y:[]) = Just x
myButLast (x:[])   = Nothing
myButLast []       = Nothing
myButLast (x:xs)   = myButLast xs

-- iterate and find length of list
len :: [x] -> Int
len x 
    | null x = 0
    | otherwise = 1 + (len ( tail x) )

-- elementAt [1,2,3] 2
-- return arr[2-1]
elementAt (h:t) y
    | y > 1 = elementAt t (y-1)
    | otherwise = h

-- [a,b,c] ++ c + b + a 
-- [a,b,c] -> [b,c] -> [c] -> [] -> [c] -> 

--[1,2,3] -> [2,3] -> [3] -> ret [3] -> [3] ++ [3] = [3,3] -> ret [3,3] -> [2,3] ++ [3,3]
myReverse (h:t) 
    | null t = [h]
    | otherwise = myReverse t ++ [h]

-- 
isPalindrome x
    | ( myReverse x == x ) = True
    | otherwise = False
