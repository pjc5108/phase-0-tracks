puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "From 1 to 10, what is your hamster's volume level?"
hamster_vol = gets.to_i

puts "What color fur does the hamster have?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption?"
candidate = gets.chomp

puts "How old is the hamster?"
#Leaving this as a string because they may respond with 5 years or 8 months.
age = gets.chomp

puts "Hamster Name: #{hamster_name}\n"
puts "Hamster Volume: #{hamster_vol}\n"
puts "Hamster Fur Color: #{fur_color}\n"
puts "Good candidate for adoption: #{candidate}\n"
puts "Hamster Age: #{age}"