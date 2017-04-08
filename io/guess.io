startGame := method(
  answer := Random value(1, 101) floor
  x := 0
  tryCount := 0

  while(tryCount < 10 and x != answer,
    "Give me your guess" println
    x := File standardInput readLine asNumber
    if(x < answer,
      writeln("go bigger"),
      if(x > answer,
        writeln("go smaller"),
        writeln("")
      )
    )

    tryCount := tryCount + 1
  )

  writeln("The answer is ", answer)
  writeln("Game clear")
)

startGame
