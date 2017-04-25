allEven :: [Integer] -> [Integer]
allEven (h:t) = if even h then h:allEven t else allEven t
