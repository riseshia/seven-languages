(\x -> x) "Logical."
(\x -> x ++ " captain.") "Logical,"

map (\x -> x * x) [1, 2, 3]
map (+ 1) [1, 2, 3]
filter odd [1, 2, 3, 4, 5]
foldl (\x carryOver -> carryOver + x) 0 [1 .. 10]
foldl1 (+) [1 .. 3]

let prod x y = x * y
prod 3 4
let double = prod 2
let triple = prod 3
