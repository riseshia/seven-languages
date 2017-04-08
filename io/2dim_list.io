TwoDimList := List clone

TwoDimList dim := method(
  x, y,
  new_list := TwoDimList clone
  for(i, 1, y,
    row := list()
    row setSize(x)
    new_list append(row)
  )
  new_list
)

TwoDimList get := method(
  x, y,
  call target at(y) at(x)
)

TwoDimList set := method(
  x, y, val,
  call target at(y) atPut(x, val)
)

l := TwoDimList dim(3, 3)
l println

l get(0, 0) println
l set(0, 0, 11)
l get(0, 0) println
