fib := method(n,
  if(n == 1 or n == 2,
    1,
    fib(n - 1) + fib(n - 2)
  )
)

fib2 := method(n,
  a := 0
  b := 1

  for(i, 2, n,
    c := a + b
    a := b
    b := c
  )
  c
)

fib(10) println
fib2(10) println
