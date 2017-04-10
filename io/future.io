"Start" println

longLong := method("called" println; wait(3); "Done!" println; "no result")
futureResult := @longLong
"Nonblocked!!" println

futureResult println
