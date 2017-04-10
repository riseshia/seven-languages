Builder := Object clone
Builder depth := ""
Builder forward := method(
  message_name := call message name
  if(message_name != "squareBrackets",
    writeln(self depth, "<", message_name, ">")
    self depth := "#{self depth}  " interpolate
  )

  call message arguments foreach(
    arg,
    content := self doMessage(arg);
    if(content type == "Sequence", writeln(self depth, content))
  )

  if(message_name != "squareBrackets",
    self depth := self depth asMutable removeSuffix("  ")
    writeln(self depth, "</", message_name, ">")
  )
)

Builder ui(
  li("Io"),
  [
    li("Lua"),
    li("JavaScript")
  ]
)
