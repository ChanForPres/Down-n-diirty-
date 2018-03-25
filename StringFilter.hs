

-- In list comp, | means for such element under those restrictions
-- Constructor Names are capital letters since they must be differentiated from function/variables 
-- Last part of comprehension should be the predicate, ie the filtering
strFilter (lst) = 
    [ c | c <- lst  ,elem c ['A'..'Z'] ] -- filter out non Capital letters

evenNumEzy (lst) = 
    [2*c |  c<-[0..5] ] -- filter out 0,2,3,4,6,8,10 from [0..10]

evenNum (lst) = 
    [ c| c <- [0..10] , (mod c 2) == 0  ] -- filter by mod 2 is 0

--  comprehension that replaces each odd number greater than 10 with "BANG!" and each odd number that's less than 10 with "BOOM!".
replaceOdd(lst) = 
   [ if c >10 then "BANG!" else ("BOOM!")  | c <- lst ]

-- Can be drawn from several lists
-- Each element on left side of list is it's own list why?
listProd () = 
    [ x*y | x <- [2,5,10],y <- [8,10,11]]

-- Function to return length of the list
-- [1,2,2] => 3
-- [1,2,2] = 1:2:2:[]
-- [] => 0

-- use # of comma's?
length' lst = 
    sum [1 | x <- lst] -- sum up new elements of the list

-- process string, remove everything except upper case from string
removeNonUpper str = 
    [ c| c<-str,elem c ['A'..'Z'] ]

-- filter out all odd #'s from each list
odd_filter lst= 
    [ [c2| c2 <- c , even c2]| c<-lst] -- for every list in motherlist, for every element in each list, allow only if even 

filter_lower str = 
    [c | c <- ['a' ..'z'] , c =='z' ]
