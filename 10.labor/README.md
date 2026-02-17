# 10. labor

I. A [jelszavakNevek.txt](https://www.ms.sapientia.ro/~mgyongyi/Funk_Log/jelszavakNevek.txt) állományban nevek és lementett jelszavak hash értéke van. A jelszavak hash értékei [Diviánszky Péter jelszavas feladata](http://lambda.inf.elte.hu/Password.xml) alapján voltak létrehozva. Tudva azt, hogy a következő kulcsképző függvények valamelyikével normalizáltuk a felhasználó jelszavát, írjunk Haskell programot, amely meghatározza, hogy kinek a jelszava a LLEKSAH, illetve a masPSWD123:

- kulcsképző függvény I. (jelszó ++ salt + forditott jelszo)
- kulcsképző függvény II, ahol a lehetséges hosszak $$16,\ 32,\ 64$$.

II. Írjunk egy-egy Haskell programot, amely

- meghatározza a billentyűzetről beolvasott két római szám összegét, szorzatát, különbségét, osztási hányadosát. Az eredményt is római számokként adjuk meg. A számításokat végezhetjük arabszámokkal,
- kiírja egy állományba 1-től 3999-ig az összes arab számot és a számoknak megfelelo római számot,
- egy szövegállományban található személynevek és a hozzájuk tartozó születési időpontok alapján meghatározza a születési időpontok római számokbeli alakját, és az eredményt a megfelelő nevekkel együtt átírja egy másik szövegállományba.

III. Egy Fesztivalok típusú listában a következő adatok vannak eltárolva: fesztiválnév, fesztiválkód, jegyár, és az együttesnevek, azaz adott a következő adatszerkezet:

```haskell
data Fesztivalok = Fesztivalok {
  fFesztival :: String,
  fKod :: Int,
  fAr :: Int,
  fEgyuttes :: [String]
} deriving (Show)
```

Írjunk egy Haskell programot, amely egy Fesztivalok típusú lista esetében:

- meghatározza azt a fesztivált, ahol a legtöbb együttes lép fel,
- meghatározza, minden egyes fesztivál esetében, a résztvevő együttesek számát,
- kiírja formázva, a jegyárak alapján rendezve, a fesztiválok adatait,
- létrehoz egy bináris keresőfát, a fesztiválnév alapján, majd inorder bejárást alkalmazva, meghatározza a fesztiválok ábécé sorrendjét.

IV. Egy szövegállományban, egy adott sportolimpiáról a következő adatok vannak eltárolva: ország, és az eredmények sportáganként, ahol az eredmények egy (sportág, érmék száma) értékpárokból álló listát jelent, azaz adott a következő adatszerkezet:

```haskell
data Olimpia = Olimpia {
  oOrszag :: String,
  oSportagak :: [(String, Int)]
} deriving (Show)
```

Írjunk egy Haskell programot, amely az állományban levő adatok alapján létrehoz egy Olimpia típusú listát és

- meghatározza, hogy egy adott ország összesen, hány érmét szerzett,
- meghatározza, hogy melyik ország szerzett a legtöbb érmét a sportolimpián,
- meghatározza, hogy milyen sportágak esetében osztottak díjakat,
- meghatározza, hogy egy adott sportágon belül, hány díjat osztottak,
- egy adott ország esetében kiírja, formázva, a sportáganként szerzett érmék száma szerinti, rendezett sorrendet,
- létrehoz egy bináris keresőfát, az országnevek alapján, majd inorder bejárást alkalmazva kiírja formázva az ábécé sorrendet.

V. Írjunk Haskell függvényt, amely létrehoz egy valós számokat tároló bináris keresőfát, és meghatározza inorder bejárással a számok rendezett sorrendjét, illetve a csomópontokban található számok összegét.
