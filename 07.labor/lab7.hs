import Data.List (sort)
import Data.List (sort, elemIndex)
import Data.Char (isDigit)
import Data.List (sort, group, sortOn)
import Data.Ord

fel1 n lista = do
    let szurtVarosok = sort [nev | (nev, lakossag) <- lista, lakossag > n]
    if null szurtVarosok
        then putStrLn $ "Nincs " ++ show n ++ " erteknel nagyobb nepesseg ertekkel rendelkezo varos."
        else do
            putStrLn $ "A(z) " ++ show n ++ " nepesseg erteknel nagyobbal rendelkezo varosok a kovetkezok:"
            mapM_ (\v -> putStrLn $ "- " ++ v) szurtVarosok



fel2 lista = do
    let eredmeny = [x | x <- lista, '0' `notElem` show x]
    if null eredmeny
        then putStrLn "Nincsenek olyan szamok, amelyek nem tartalmazzak a 0 szamjegyet."
        else putStrLn $ "A 0 szamjegyet nem tartalmazo szamok a kovetkezok: " ++ unwords (map show eredmeny)



fel3 lista = do
    let szurt = sort [s | s <- lista, not (any isDigit s)]
    if null szurt
        then putStrLn "Nincsenek olyan karakterlancok, amelyek nem tartalmaznak szamot."
        else do
            putStrLn "A karakterlancok, amelyek nem tartalmaznak szamokat:"
            mapM_ putStrLn szurt



fel6 lista = do
    let statisztika = [(length g, head g) | g <- group (sort lista)]
    let paratlanok = sort [(db, ertek) | (db, ertek) <- statisztika, odd db]
    
    if null paratlanok
        then putStrLn "Nincs paratlan elofordulasi ertekkel rendelkezo szam."
        else mapM_ (\(db, v) -> putStrLn $ "Elofordulas: " ++ show db ++ " -> Ertek: " ++ show v) paratlanok




snd3Elem(_,y,_)=y

fst3Elem (x,_,_)=x

fel5 = do
    let ls = [("iphoneS1", 20, 2500), ("huaweiS1", 30, 1700), ("huaweiS2", 25,3100), ("samsungA1", 30, 2000), ("nokia", 10, 1900), ("iphoneS2", 10, 2200),("samsungA2", 15, 1650), ("iphone3", 30, 1800)]
    let ls2= reverse $ sortOn snd3Elem ls
        ls3 = sort ls
        ls4 = sortOn  (Down . snd3Elem) ls
        maxErtek = snd3Elem (head ls2)
        megoldas = map fst3Elem $ takeWhile (\(_,e,_)->e == maxErtek) ls2
    putStrLn ("A maximalis ertek" ++ show maxErtek ++ ". A telefonok amelyeknek annyi az eladasi erteke a kovetkezok:")
    mapM_ putStrLn megoldas 

main :: IO()
main = do
    fel6 [1,1,1,2];