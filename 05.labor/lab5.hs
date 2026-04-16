import Data.Char
import System.Win32 (SECURITY_ATTRIBUTES(nLength))
import Data.Array (Ix(index))

tokenize :: [Char] -> [String]
tokenize = words . map (irasjelHelyettesit . toLower)
--tokenize = map (irasjelHelyettesit . toLower)

irasjelHelyettesit :: Char -> Char
irasjelHelyettesit c
    | notElem c ",.;:!?\"'()[]<>" = c
    | otherwise = ' '


lengthLista ls =  map length ls


myMaximum1 :: (Num b, Enum b, Ord a) => [a] -> [(a, b)]
myMaximum1 ls = filter fg $ zip ls [0, 1..]
    where
        m = maximum ls
        fg k = fst k == m


myMinimum2 :: (Num b, Enum b, Ord a) => [a] -> (a, [b])
myMinimum2 ls = (m, map snd $ filter fg $ zip ls [0,1..])
    where
    m = minimum ls
    fg k = fst k == m

-- talalat 5 [3, 13, 5, 6, 7, 12, 5, 8, 5]

talalat x ls = l1 
    where 
        zipls = zip ls [0,1.. ]
        l1 = map snd $ filter (\y -> fst y==x) zipls



ps ls = sum [t2 | (t1,t2,t3) <- ls]


ps2 ls r= sum [t2 | (t1,t2,t3) <- ls1]
    where ls1 = filter (\(t1,t2,t3) -> t3 == r) ls



atlagTu ls = [(nev,atlag jegyek) | (nev,jegyek)<-ls]
    where 
        atlag ls2 = sum ls2 / fromIntegral (length ls2)



main = do
    let lista = "eze egy PrOBA szoveg. ezz egy masik proBa! azz Tobbfele irasJEL ::Hasznalat"
    let l1 = tokenize lista
    let l2 = lengthLista l1
    let m1 = minimum l2
    putStrLn "a szavak hossza: "
    print l2
    let (minim,indexek) = myMinimum2 l2
    let l3 = zip l1 l2
    print l3
    let r1 = concatMap (++ " ") [fst (l3 !! i) | i <- indexek]
    print r1
    let a = 5
    let l1 = [3, 13, 5, 6, 7, 12, 5, 8, 5]
    let t1 = talalat a l1
    let a2 = 'e'
    let l2 = "Bigeri-vizeses"
    let t2= talalat a2 l2
    -- print t1
    -- print t2
    let c1 = concatMap ((<> " ") . show) t1
    putStrLn $ show a <> " talalat pozicio: " <> c1
    let c2 = concatMap ((<> " "). show) t2
    putStrLn $ show a2 <> " talalat pozicio: " <> c2

    let c3 =  concatMap  ((++ " "). show) t1
    print c3

    let ls = [("golya",120,"ms"),("fecske",85,"cj"),("cinege",132,"ms")]
    let result = ps ls
    let madarls = concatMap (<> " ") [t1 | (t1,t2,t3) <- ls]
    putStrLn $ madarls <> "Populacio szama: " <> show result
    let result2 = ps2 ls "ms"
    putStrLn $ madarls <> "ms-ben" <> " populacio szam " ++ show result2
    let lsNevJegy = [("mari",[10, 6, 5.5, 8]), ("feri",[8.5, 9.5]),("zsuzsa",[4.5, 7.9, 10]),("levi", [8.5, 9.5, 10, 7.5])]
    mapM_(\(nev,atlagJegyek)-> putStrLn (nev ++ " " ++ show atlagJegyek)) (atlagTu lsNevJegy)
    


