"hello" ++ "world"
['a', 'b'] -- "ab"
(5 + 5) /= 10 -- False

if (5 == 5) then "true" else "false"

let double x = x * 2

-- factorial
let fact x = if x == 0 then 1 else fact (x - 1) * x

-- list
let (h:t) = [1, 2, 3, 4]
1:[2, 3]
-- List could have only one type or List

-- Range
[1..2]
[10, 8..4]
take 5 [1..]

-- Comprehension
[x * 2 | x <- [1, 2, 3]]
