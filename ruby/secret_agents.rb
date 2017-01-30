#1 Encryption
# Obtain secret password through user input
# Get length of password (and number of indexed letters in password)
# For each letter:
	#Move the letter one letter up in the alphabet
	#Add it to the end of the encrypted password
# Sum is the complete encrypted password


index = 0
sec_pass = "penguin"
encr_pass = ""
while index < sec_pass.length
	encr_pass += sec_pass[index].next
	index += 1
end
print encr_pass

#2 Decryption
# Recieve encrypted password from first program
# For each letter:
	#Use the indexed position corresponding to that letter to isolate the letter
	#Find the indexed position of that letter in a string of the alphabet
	#Subtract 1 from the indexed position
	#Find what letter corresponds to the new indexed position
	#Add that result to decrypted password
#Sum is the original password


encr_pass = "qfohvjo"
index = 0
alpha = "abcdefghijklmnopqrstuvwxyz"
decr_pass = ""
while index < encr_pass.length
	
  i_pos = alpha.index(encr_pass[index])
  n_pos = i_pos - 1
  decr_pass += alpha[n_pos]
  index +=1 
end
p decr_pass
