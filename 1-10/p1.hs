-- adding maybe allows for usage of just clause
myLast:: [a] -> Maybe a

--myLast [1,2,3,4,5]
myLast x
    | null x = Nothing
    | null (tail x) =  Just ( head x)
    | otherwise = myLast (tail x)

-- easymode
-- myLast x = last x

-- lucky :: (Integral a) => a -> String


safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead a =  Just ( head a )


-- head (x:_ ) = x -- get the head from the list
 --tail (_ :x ) = x -- get the tail from the list
len :: [a] -> Int 
len x 
    | null x= 0 -- pay in len 
    | otherwise  = 1 + len (tail x) -- find length of the list


--  listnumber (x:xs) =1 + listnumber xs

fac :: (Integral a ) => a -> a
fac 1 = 1
fac x = x * fac (x-1)

-- tail recursive fac 
-- fac' :: (Integral a) => a -> a
-- fac' x =  
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

sign a
  | a < 0 = (-1)
  | a > 0 = 1
  | otherwise = 0

average list =
  if null list
     then 0
     else div (sum list) (length list)

data Foo = Hither | Thither | Yon

instance Eq Foo where
    Hither == Hither = True
    Thither == Thither = True
    Yon == Yon = True
    _ == _ = False

