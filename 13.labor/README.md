# 13. labor

I. A tudosok.json állomány JSON szerkezetű, tudósok adatait tárolja: vezetéknév, nemzetiség, születési év és elhalálozási év. Egy ilyen szerkezetű állomány tartalma a következő lehet:

```json
{"tudosok":[
  {"nev" :"Euler",
  "nemzetiseg" :"svajc",
  "szEv" :1707,
  "hEv" :1783
  },
  {"nev" :"Bolyai Janos",
  "nemzetiseg" :"magyar",
  "szEv" :1802,
  "hEv" :1860
  },
  {"nev" :"Perelman",
  "nemzetiseg" :"orosz",
  "szEv" :1966
  }
]}
```

- Írjunk egy Haskell programot, amely
- az állományban levő adatok alapján létrehoz egy Tudosok adatszerkezetet a következő két adatszerkezetet használva:

  ```haskell
  data Tudos = Tudos {
    nev :: String,
    nemzetiseg :: String,
    szEv :: Int,
    hEv :: Maybe Int
  } deriving (Show, Read, Generic, FromJSON, ToJSON)

  newtype Tudosok = Tudosok {
    tudosok :: [Tudos]
  } deriving (Show, Read, Generic, FromJSON, ToJSON)
  ```

- meghatározza a tudósok születési év szerint rendezett sorrendjét,
- meghatározza a tudósok életkorát és abban az esetben, ha nem jelenik meg egy tudósnál elhalálozási év, az életkor helyett a kortars szót tünteti fel,
- meghatározza a tudósok életkor szerinti rendezett sorrendjét,
- egy állományba kiírja JSON formában adott nemzetiségű tudósok listáját.

II. Az autok.json állomány JSON szerkezetű, személygépkocsik adatait tárolja: gyártmány (String), modell (String), évjárat (Int). Írjunk egy Haskell-programot, amely

- kiírja a képernyőre a személygépkocsik adatait, az évjárat szerinti mező alapján rendezve, minden sorba egy gyártmány, modell, illetve évjárat értéket írva,
- létrehoz egy gyartmany.json JSON formátumú állományt, amelybe átírja megadott gyártmányú személygépkocsik adatait, pontosabban a modell és évjárat értékeket, ahol a keresett gyártmány értékét a billentyűzetről olvassuk be,
- létrehoz egy autokJavitva.json JSON formátumú állományt, amelybe a személygépkocsik adatait úgy írja át, hogy minden gyártmánynév, illetve modellnév esetében ha kisbetűvel kezdődik, akkor a kezdőbetűt átalakítja nagybetűvé.

III. A betegek.json állomány JSON szerkezetű, betegek adatait tárolja: név (String), ország (String), születési év (Int), betegségek ([String]). Írjunk egy Haskell-programot, amely feldolgozza az állományban levő adatokat és

- kiírja a képernyőre egy adott országon belül a betegségeket és a betegségek számát, ahol az országnevet a billentyűzetről olvassuk be,
- meghatározza, hogy melyik országban van a legtöbb fajta betegség,
- létrehoz egy orszag.json JSON formátumú állományt, amelybe átírja megadott országú betegek adatait, pontosabban a nevet, születési évet és a betegségeket, ahol a keresett ország nevét a billentyűzetről olvassuk be.
