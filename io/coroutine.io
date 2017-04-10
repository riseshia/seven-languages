vizzini := Object clone
vizzini talk := method(
  "111" println
  yield
  yield
  "111111" println
)

fezzik := Object clone
fezzik rhyme := method(
  yield
  "222" println
  yield
  yield
  "222222" println
)

third := Object clone
third rhyme := method(
  yield
  yield
  "333" println
  yield
  yield
  "333333" println
)

vizzini @@talk
fezzik @@rhyme
third @@rhyme

Coroutine currentCoroutine pause
