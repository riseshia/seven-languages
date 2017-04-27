myGcd :: Integer -> Integer -> Integer
myGcd a b = if a > b then gcd a b else gcd b a
  where gcd a b = if b == 0 then a else gcd b (rem b a)
