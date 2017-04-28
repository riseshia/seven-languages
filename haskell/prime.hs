isPrime :: Integer -> [Integer] -> Bool
isPrime candidate primes = all (\x -> 0 /= rem candidate x) primes

genPrimes :: Integer -> [Integer] -> [Integer]
genPrimes x primes = if isPrime x primes then
                       x:(genPrimes (x + 1) (x:primes))
                     else genPrimes (x + 1) primes

primes = genPrimes 2 []

yprimes :: [Integer]
yprimes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]
