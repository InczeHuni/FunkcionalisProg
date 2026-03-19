import System.Win32 (xBUTTON1)
import Data.Foldable1 (Foldable1(fold1))
atlag ls = (sum ls)/fromIntegral (length ls)

myLength[] = 0
myLength (x:xs) = 1 + myLength xs 

myLength2[] res = res
myLength2(x:xs)res = myLength2 xs (res +1)


myLength3 ls = foldr (\x db -> (+) 1 db) 0 ls

myLength4 ls = foldl(\db x -> (+) 1 db) 0 ls

myLength5 ls res = foldr (\x res -> (+) 1 res)res ls

myLength6 ls = length ls

myProduct[]=1
myProduct (x:xs) = x * myProduct xs

myProduct2[] res = res
myProduct2 (x:xs) res = myProduct2 xs (res * x)

myProduct3 ls = foldr1 (*) ls 

myProduct4 ls = product ls 

myMinimum[]=error "ures lista"
myMinimum[x]=x
myMinimum (x1 : x2 : xs)
    |  x1 < x2 = myMinimum (x1:xs)
    | otherwise = myMinimum (x2:xs)


myMinimum2 [] = error "ures lista"
myMinimum2 [x] = x
myMinimum2 (x1:x2:xs)= if x1 < x2
    then myMinimum2 (x1:xs)
    else myMinimum2 (x2:xs)


myMinimum3 ls = foldl1 min ls 

myMinimum4 ls = minimum ls



myMaximum[]=error "ures lista"
myMaximum[x]=x
myMaximum (x1 : x2 : xs)
    |  x1 > x2 = myMaximum (x1:xs)
    | otherwise = myMaximum (x2:xs)


myMaximum2 [] = error "ures lista"
myMaximum2 [x] = x
myMaximum2 (x1:x2:xs)= if x1 > x2
    then myMaximum2 (x1:xs)
    else myMaximum2 (x2:xs)


myMaximum3 ls = foldr1 max ls 

myMaximum4 ls = maximum ls

listaN ls n = ls !! n

listaN2 ls n 
    | ls == [] = error "ures lista"
    | n < 0 = error "neg.index"
    | length ls <= n = error "tul nagy index"
    |otherwise = ls !! n


lsFuz ls1 ls2 = ls1 ++ ls2 

palindrom ls = ls == reverse ls

palindrom2 ls = if ls == reverse ls then "palindrom" else "nem palindrom"

palindrom3[]=True
palindrom3[x]=True
palindrom3 ls = head ls == last ls && palindrom3 ((init.tail)ls)



szjLs x 
    | x < 0 = szjLs (abs x)
    | x < 10 = [x]
    | otherwise = szjLs (div x 10) ++ [mod x 10]



elsoUtolso ls = tail ls ++ [head ls]

elsoUtolso2 (x:xs) = xs ++ [x]

decP x p 
    | x < 0 = error "neg.szam"
    | x < p = [x]
    | otherwise = decP (div x p) p ++ [mod x p]


pDec ls p = foldl (\hatvany x -> x + (p * hatvany)) 0 ls

pDec2 x p =
    let
        szamjegyek x 
            | x < 10 = [x]
            | otherwise =  mod x 10 : szamjegyek (div x 10)
        szjIdx = zip (szamjegyek x ) [0 ..]
    in sum [i * (p ^ hatvany) | (i, hatvany) <- szjIdx] 


ls1 = [[1,2,3], [4,5]]

listaNMap ls = map (\x -> listaN x 0) ls


ls2=[([1,2,3],0),([1..10],5)]

listaNMap2 = map (uncurry listaN) ls2
myLengthLs = map myLength ls1

ls3 = [[1..10],[5,66]]

ls4 = [[23,52,12],[213,534],[23,45]]

lsFuzMap = map (uncurry lsFuz) (zip ls3 ls4)

aLs = [3,-2,5,-7]

poli [] x = 0
poli(a:aLs) x = a + x * (poli aLs x)

type Pont = (Double, Double)

lsP :: [Pont]
lsP = [(4.6, 3.5), (1.2, 1.4), (8.0, 4.0), (4.3, 5.6)]
p = (3.4,5.6)


tavolsag (x1,y1) (x2,y2) = sqrt ((x1 - x2)**2 + (y1 - y2)**2)

minTavolsag lsP p = fold1 (\p1 p2 -> if tavolsag p1 p < tavolsag p2 p then p1 else p2) lsP

minTavolsag3 [p1] _ = p1
minTavolsag3 (p1 : p2 : ls) p
    | tavolsag p1 p < tavolsag p2 p = minTavolsag3 (p1 : ls) p
    | otherwise = minTavolsag3 (p2 : ls) p

    