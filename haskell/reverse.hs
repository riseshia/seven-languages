rev :: [Integer] -> [Integer]
rev [] = []
rev (h:t) = rev(t) ++ [h]
