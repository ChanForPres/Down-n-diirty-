r = 5.0 -- assign var
area = pi * r^2 -- define w prior variable

f = r

y = x + 2 -- don't need to define in order as x val cannot change!
x = r -- make sure not already defined, y defined recursively : y -> x+2 -> r+2 -> 5.0+2 = 7.0

double var = var * 2    -- a=>a->a
tripdoub double = double * 3 -- a=>a->a->a

-- h(g(f(x)), f(x)) = g(f(x)) * f(x) * 2 
quaddoub tripdoub double = tripdoub * double * 2 -- a=>

-- variables must begin with lowercase letter
_night = 5

-- local where clauses
pythag a b = sqrt ( a^2 + b ^2) -- sqrt already defined
    where 
    a = 2
    b = 2

getnum n = 1 + n --comm = variable not in scope:getnum
-- newnum 1 1 = 3
{- newnum 1 1 -> oldnum = 1? num1 = 1
 - num2 = 1 
 - oldnum num1 = getnum num1 = getnum 1 = 1 + 1 = 2
 -
 -}

newnum oldnum num1 = num2 + oldnum num1 
    where 
    oldnum = getnum -- comment out = nontype variable argument in constraint : num(t->t)
    num2 = num1

-- try a(b(c)) where c = a
{- a 1 1 => b + c
 - b -> a ->c -> 1
 - c = 1
 -}
a b c = b + c 
    where 
    --c = a cannot construct the infinite type
    a = c
    b = a

-- b 1 1 = 3
-- b 2 2 = 4
b c d = e
    where
    d = 2 -- always use local definition over arg if defined
    e = c + d

e = 111
-- c(d,e) = f (g,h)
c d e = f + d
    where
    f = e -- e value exists within the confines of the function

-- d(x,y)
d a b = a * a
    where

-- functions are values

-- increment function
inc x = x + 1


-- string constructor + char counter

repeatN :: [char] -> [string]  -- function signature, take string & ret [string]
repeatN "" = [] -- base case 
repeatN str = str : repeatN (tail str)


-- string constructor + char counter
--repeatN :: string -> string  -- function signature
--repeatN "" 0 = [] 
--repeatN str x= str : repeatN ((tail str) (inc x))


{-
-- pass in list and search for ans
binSear list ans= goLeft list ans| goRight list ans
    where
    goLeft a s= 
        if null a
            then return 
            else if head a == s
                then 

    goRight a s=
        if null a 
            then return 
            else if tail a
-}
