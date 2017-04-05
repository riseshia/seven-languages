Number originDiv := Number getSlot("/")
Number setSlot("/",
  method(
    divider,
    if(divider == 0, 0, originDiv(divider))
  )
)
