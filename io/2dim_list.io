Matrix := List clone

Matrix dim := method(
  x, y,
  new_list := Matrix clone
  for(i, 1, y,
    row := list()
    row setSize(x)
    new_list append(row)
  )
  new_list
)

Matrix get := method(
  x, y,
  call target at(y) at(x)
)

Matrix set := method(
  x, y, val,
  call target at(y) atPut(x, val)
)
Matrix transpose := method(
  matrix := call target clone
  matrix get := method(x, y, proto get(y, x))
  matrix set := method(x, y, val, proto set(y, x, value))
  matrix
)

l := Matrix dim(3, 3)
l println

l get(0, 2) println
l set(0, 2, 11)
l get(0, 2) println
l transpose get(2, 0) == l get(2, 0) println
