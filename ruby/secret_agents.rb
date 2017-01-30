#1 Encryption
# Obtain secret password through user input
# Get length of password (and number of indexed letters in password)
# For each letter:
	#Move the letter one letter up in the alphabet
	#Add it to the end of the encrypted password
# Sum is the complete encrypted password

def encrypt(sec_pass)
	
	index = 0
	#sec_pass = "penguin"
	encr_pass = ""
	while index < sec_pass.length
		if sec_pass[index] == "z"
			encr_pass += "a"
		else
			encr_pass += sec_pass[index].next
		end
		index += 1
	end
	p encr_pass
end



#2 Decryption
# Recieve encrypted password from first program
# For each letter:
	#Use the indexed position corresponding to that letter to isolate the letter
	#Find the indexed position of that letter in a string of the alphabet
	#Subtract 1 from the indexed position
	#Find what letter corresponds to the new indexed position
	#Add that result to decrypted password
#Sum is the original password

def decrypt(encr_pass)

	#encr_pass = "qfohvjo"
	index = 0
	alpha = "abcdefghijklmnopqrstuvwxyz"
	decr_pass = ""
	while index < encr_pass.length
		i_pos = alpha.index(encr_pass[index])
		if i_pos == 0
			n_pos = 25
		else
			n_pos = i_pos - 1
		end
		  decr_pass += alpha[n_pos]
		  index +=1 
		end
	p decr_pass
end

puts "Would you like to encrypt or decrypt a password? (Type 1 for encryption, 2 for decryption.)"
e_or_d = gets.to_i

puts "What is your password?"
user_pw = gets.chomp

if e_or_d == 1
	encrypt(user_pw)
else
	decrypt(user_pw)
end
	

