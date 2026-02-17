# 12. labor

I. A betegek.txt állomány betegek adatait tárolja: név, születési év, vérnyomás értékpárok. Írjunk egy Haskell programot, amely

- beolvassa az állományban levő adatokat és létrehoz egy Beteg elemtípusú listát a következő adatszerkezetet használva:

  ```haskell
  data Beteg = Beteg {
    bNev :: [Char],
    bVerny :: [(Int, Int)],
    bSzEv :: Int
  } deriving (Show)
  ```
- rendezi a létrehozott lista tartalmát a bNev mező alapján, ábécé sorrendbe,
- bináris keresést alkalmazva meghatározza egy adott beteg vérnyomás értékeit, illetve hogy hányszor volt magas a vérnyomása (egy betegnek akkor magas a vérnyomása, ha az első érték nagyobb mint 160, vagy a második érték nagyobb mint 140.

II. A film.txt állomány filmekre vonatkozó adatokat tárol: filmcím, rendező, megjelenési év, költség. Írjunk egy Haskell programot, amely

- beolvassa az állományban levő adatokat és létrehoz egy Film elemtípusú listát a következő adatszerkezetet használva:

  ```haskell
  data Film = Film {
    cím :: [Char],
    fRendezo :: [Char],
    fEv :: Int,
    fKoltseg :: Int
  } deriving (Show)
  ```
- bináris keresőfát építve meghatározza, hogy egy adott évben milyen filmek jelentek meg
- a felépített bináris keresőfában inorder bejárást alkalmazva meghatározza az fEv mező szerinti növekvő sorrendet,
- meghatározza, hogy melyik filmeknek volt a legnagyobb a költsége.

III. A [film.txt](https://www.ms.sapientia.ro/~mgyongyi/Funk_Log/film.txt) állomány filmekre vonatkozó adatokat tárol: megjelenési év, filmcím, a film hossza, a film típusa, népszerűségi index, díjazott-e a film, a főszerepet játszó színész, a színésznő és a rendező. A szövegállományban a filmekre vonatkozó adatok sorokba vannak tördelve, ahol egy sorban, a különböző típusú adatok között tabulátor jel van és Unknown jelenik meg, ha valamely adatra vonatkozóan nincs meghatározott érték. Írjunk egy Haskell programot, amely ByteString-eket használva a következőket végzi:

- megvizsgálja két filmről hogy ugyanabban az évben készült vagy sem,
- kiírja a rendFilm.txt állományba a filmek neveit elkészülési évük szerint növekvő sorrendbe,
- kiírja a szineszek.txt állományba a különböző színészek neveit,
- meghatározza, hogy hány színész, illetve színésznő szerepel az állományban,
- különböző listákba összegyűjti az ugyanabban az évben megjelent filmeket,
- meghatározza, hogy egy adott színész milyen filmekben szerepel.
