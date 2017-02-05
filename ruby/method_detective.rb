# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
=> “InVeStIgAtIoN”

"zom".insert(2,"o")
=> “zoom”

"enhance".center(16)
=> "    enhance    "

"Stop! You’re under arrest!".upcase
"STOP! YOU’RE UNDER ARREST!"

"the usual" << "suspects"
"the usual suspects"

" suspects".prepend("the usual")
"the usual suspects"

"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"

"The mystery of the missing first letter".reverse.chop.reverse
"he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
=> "Elementary, my dear Watson!"

"z"[0].ord
=> 122 

"z".getbyte(0)
=> 122
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count("a")
=> 4