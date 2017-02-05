#create unique hash keys that will store user input
#for each key:
	#request user input
	#store user input to corresponding key
#display the entire hash
#ask user if there is a correction that needs to be made
#if user answers yes
	#ask which key needs to be corrected
	#ask for the correction
	#update key with corrected value




pref = {
	:name => "",
	:age => "",
	:marr_status => "",
	:num_child => "",
	:decor_type => "",
	:fav_color => "",
	:num_rooms => ""
}

puts "What is your first and last name?"
pref[:name] = gets.chomp

pref[:age] = gets.to_i

puts "What is your marital status?"
pref[:marr_status] = gets.chomp

puts "How many children do you have?"
pref[:num_child] = gets.to_i

puts "What is your favorite decor type?"
pref[:decor_type] = gets.chomp

puts "What is your favorite color?"
pref[:fav_color] = gets.chomp

puts "How many rooms are you redesigning?"
pref[:num_rooms] = gets.to_i

puts pref

puts "Would you like to correct any of the submitted preferences?"
correction = gets.chomp
if correction == "yes"
  puts "Which key needs correcting?"
  update_key = gets.chomp.to_sym
  puts "What would you like to change it to?"
  update_val = gets.chomp
  pref[update_key] = update_val
  puts pref
else
  puts pref
end
  
  
  
