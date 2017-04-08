List myAverage := method(
  e := try(
    avg := call target sum / call target size
  )
  e catch(Exception,
    Exception clone raise("You shall not passss")
  )
  avg
)

list(1, 2, 3) myAverage println
list(1, "asdf", 3) myAverage println
