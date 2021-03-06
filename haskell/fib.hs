-- fib :: Integer -> Integer
-- fib 0 = 1
-- fib 1 = 1
-- fib x = fib(x - 1) + fib(x - 2)

fibTuple :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
fibTuple (x, y, 0) = (x, y, 0)
fibTuple (x, y, i) = fibTuple(y, x + y, i - 1)

fibResult :: (Integer, Integer, Integer) -> Integer
fibResult (x, y, i) = x

fib :: Integer -> Integer
fib x = fibResult(fibTuple(0, 1, x))
