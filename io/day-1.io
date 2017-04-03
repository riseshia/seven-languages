"Hello io" println

Car := Object clone
Car description := "This is a car"

Ferrari := Car clone
Ferrari slotNames

ferrari := Car clone
ferrari slotNames

// 1 + "one" is not working
0 and true // true
"" and true // true
nil and true // false
Car getSlot("description")
Ferrari proto slotNames
