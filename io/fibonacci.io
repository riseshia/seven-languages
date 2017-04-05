fib := method(n,
        if(n == 1 or n == 2,
          1,
          fib(n - 1) + fib(n - 2)
        )
      )

fib(10) println
