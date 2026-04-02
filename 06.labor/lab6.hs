

main1 = do
    putStr "x1="
    x1 <- readLn :: IO Int
    putStr "x2="
    x2 <- readLn :: IO Int
    putStrLn("x1=" ++ show x1 ++ ", x2=" ++ show x2)
    let ls = if x1 < x2 then [x1 .. x2] else [x2 .. x1]
        voLs = legtobbVO ls
    putStrLn "lista elemei:"
    print ls
    putStrLn("Lista elemeinek osszege:" ++ show (sum ls))
    putStrLn("Primszamok osszege:" ++ show (primszamOsszeg ls))
    putStrLn("Legtobb valodi oszto szam:" ++ show (snd . head $ voLs)++ ", ezzel rendelkezo szamok")
    print (map fst voLs)


main1_2 = do
    putStr "x1="
    x1 <- getLine
    putStr "x2="
    x2 <- getLine 
    let x1Szam = read x1 :: Int
        x2Szam = read x2 :: Int
    putStrLn("x1=" ++ show x1 ++ ", x2="++ show x2)
    putStrLn("x1="++show x1Szam ++ ", x2=" ++ show x2Szam)




osztok x = [i|i<- [1..x],mod x i == 0]

primszam x = [1,x] == osztok x

primszamOsszeg ls = sum . filter primszam $ ls


valodiOsztok x = [i | i <- [2 .. div x 2],mod x i ==0,i/=x]


legtobbVO ls = filter (\(szam,vo)-> vo == maxVO) ls2
    where 
        ls2 = [(szam,length $ valodiOsztok szam) | szam <- ls]
        maxVO = maximum $ map snd ls2





main2 = do
    putStr "n="
    n <- readLn :: IO Int
    putStrLn ("n=" ++ show n)






