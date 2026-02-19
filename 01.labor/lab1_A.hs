osszeg a b = a + b

kulonbseg a b = a - b
-- (-) a b

szorzat a b = a * b

hanyados a b = a / b

hanyados2 a b = div a b

hanyados3 a b = a `div` b

osztmar a b = mod a b

osztmar2 a b = a `mod` b

elsoF a b = (-b) / a

abszolut a
  | a < 0 = -a
  | otherwise = a

abszolut2 a = if a < 0 then -a else a

elojel n = if n < 0 then "negativ" else if n > 0 then "pozitiv" else "nulla"

elojel2 n
  | n < 0 = "negativ"
  | n > 0 = "pozitiv"
  | otherwise = "nulla"

max_ a b = if a > b then a else b

max1 a b
  | a > b = a
  | otherwise = b

min_ a b
  | a < b = a
  | otherwise = b

min1 a b = if a < b then a else b


--a*(x**2) + b*x +c = 0 -> a,b,c bemeneti arg.
--delta =b**2 -4*a*c
--gy1 = (-b + sqrt delta) /2*a
--gy2 = (-b - sqrt delta) /2*a

masodF a b c 
  | delta < 0 =  error "komplex szamok"
  | otherwise = (gy1,gy2)
  where
    delta =b**2 -4*a*c
    gy1 = (-b + sqrt delta) /(2*a)
    gy2 = (-b - sqrt delta) /(2*a)