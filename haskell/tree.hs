data Tree a = Children [Tree a] | Leaf a deriving (Show)

let leaf = Leaf 1
let (Leaf value) = leaf
let tree = Children[Leaf 3, Children[Leaf 1, Leaf 2]]
let (Children ch) = tree
let (h:t) = ch

depth (Leaf _) = 1
depth (Children c) = 1 + maximum (map depth c)
