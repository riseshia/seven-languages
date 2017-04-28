'c' -- it :: Char
"abc" -- it :: [Char]
['a', 'b', 'c'] -- it :: [Char]
"abc" == ['a', 'b', 'c'] -- True

backwards :: Hand -> Hand
-- backwards :: [a] -> [a]
backwards [] = []
backwards (h:t) = backwards t ++ [h]

data Maybe a = Nothing | Just a

instance Monad Maybe where
  return = Just
  Nothing >>= f = Nothing
  (Just x) >>= f = f x
