// loop("getting dizzy..." println)

i := 1
while(i <= 11, i println; i = i + 1); "This one goes up to 11" println

for(i, 1, 11, i println); "This one goes up to 11" println
for(i, 1, 11, 2, i println); "This one goes up to 11" println

if(true, "It is true.", "It is false.")
if(false) then("It is true.") else("It is false.")
if(false) then("It is true." println) else("It is false." println)

OperatorTable

OperatorTable addOperator("xor", 11)

true xor := method(bool, if(bool, false, true))
false xor := method(bool, if(bool, true, false))

postOffice := Object clone
postOffice packageSender := method(call sender)
mailer := Object clone
mailer deliver := method(postOffice packageSender)
mailer deliver

postOffice messageTarget := method(call target)
postOffice messageTarget
postOffice messageArgs := method(call message arguments)
postOffice messageArgs("one", 2, :three)
postOffice messageName := method(call message name)
postOffice messageName
