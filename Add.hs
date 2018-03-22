--module Main where
import Debug.Trace

add x y = x + y  -- Num a=> a ->a ->a

inc x = add x 1 --  Num a => p -> a -> a


count :: String-> Int -> Int -- why doesn't sig work, because should be char[] instead of String?
count "" x = x -- return var when empty string
 -- to add debugging -> count str a = trace("a: " ++ show a)(count (tail str) (inc a))
count str a= trace ("a: " ++ show a ++ " tail str: " ++ show (tail str)) count (tail str) (inc a) -- tail str = [a,b,c]-> [b,c] -> [c] -> [] = 3?
    where a = 0 -- start variable as 0


-- recursive define
double :: Num a => a -> a
double var = var*2

trip :: Num a => a -> a
trip var = 3 * double var

quad :: Num a => a -> a
quad var = 4 * trip var -- quad 3 = 4 * trip 3 = 4 * (3 * double 3) = 4 * (3 * (3 * 2)) = 72

-- dot operator (.) is function composition

-- putStr expects a "" type , else error
-- recurPrint x = if x > 0 then putStr "ja" 



diet :: (Eq a ,Num a) => a -> String
diet num
    |num == 5 = "answer is 5, congrats"
    |num /= 5 = "wrong, u are done"
    |otherwise = "wtf happend"

--action :: -> IO String
action = do
    print "a"
    line <- getLine
    if "1" == line-- compare to variable or input
        then print "b"
        else return ()
