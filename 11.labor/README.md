# 11. labor

I. Írjunk egy-egy Haskell programot, amely

- kiírja egy szövegállományba az ábécé első n betűjéből képezhető m hosszúságú szavakat, lexikográfikus sorrendben,
- kiírja egy szövegállományba az ábécé első n betűjéből képezhető m hosszúságú szavakat, ahol nem megengedett a betűk többszöri felhasználása, és nem számít a betűk sorrendje.

II. Írjunk egy-egy Haskell programot, amely

- meghatározza az n királynő probléma k-ik megoldását,
- kiírja egy szövegállományba, megadott n értékre, az n királynő feladat megoldásait. Formázzuk úgy a szövegállomány tartalmát, hogy minden sorba négy megoldást írjunk. A megoldások közé tabulátort, a megoldáselemek közé szóközt tegyünk. Kezeljük azokat a bemeneteket, amikor nincs megoldás.

III. Írjunk egy Haskell programot, amely egy n számra, meghatározza, hogy hányféleképpen állítható elő egy adott xs összeg, az n számból, ha mindegyik számot csak egyszer használhatom fel. Írjunk programot, amely több bemenetre is meghatározza a megfelelő eredményt, ahol a bemenetek egy szövegállományban vannak. Az eredményeket szintén állományba írjuk ki.
Például:

$$xs = 30$$-ra, a számok: $$1,\ 2,\ 3,\ 5,\ 7,\ 8,\ 9,\ 10,\ 15$$
Az eredmény:

```haskell
[[1,2,3,5,9,10],[1,2,3,7,8,9],[1,2,3,9,15],[1,2,5,7,15],
[1,2,8,9,10],[1,3,7,9,10],[1,5,7,8,9],[1,5,9,15],[2,3,7,8,10],
[2,3,10,15],[2,5,8,15],[3,5,7,15],[3,8,9,10],[5,7,8,10],[5,10,15],[7,8,15]]
```

IV. Írjunk egy-egy Haskell programot, amely

meghatározza meg a Pascal féle háromszög n-ik sorának k-ik elemét,

kiírja a Pascal féle háromszög első n sorát egy állományba,

meghatározza a Pascal háromszög k-ik sorában található számok osztási egész részét, illetve osztási maradékát, a sorban található második szám szerint. Az eredményt egy tuple elemtípusú listaként kezeljük. Határozzuk meg több sorra is az osztási egészrészeket és osztási maradékokat, ahol a sorok értékeit a billentyűzetről olvassuk be, az eredményt, pedig a példában megadottak szerint írjuk ki.
Például:

Legyenek a beolvasási értékek: $$5,\ 8$$.
Az eredmény:

```
5: (0,1) (1,0) (2,0) (2,0) (1,0) (0,1)
8: (0,1) (1,0) (3,4) (7,0) (8,6) (7,0) (3,4) (1,0) (0,1)
```

Mert:

```haskell
5. sor: [1, 5, 10, 10, 5, 1]
8. sor: [1, 8, 28, 56, 70, 56, 28, 8, 1]
```
