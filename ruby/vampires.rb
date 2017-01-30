vamp = 0

puts "What is your name?"
emp_name = gets.chomp

if emp_name == "Drake Cula" || emp_name == "Tu Fang"
	vamp_name = true
else 
	vamp_name = false
end

puts vamp_name
puts vamp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
year_born = gets.to_i

if age != 2017-year_born
	vamp = vamp + 1
else
	vamp = vamp
end

puts vamp_name
puts vamp

puts "Our company cafeteria serves garlic bread. Should we get some for you?"
gar_bread = gets.chomp

if gar_bread == "no"
	vamp = vamp + 1
else 
	vamp = vamp
end

puts vamp_name
puts vamp

puts "Would you like to enroll in our company's health insurance program?"
insurance = gets.chomp

if insurance == "no"
	vamp = vamp + 1
else
	vamp = vamp
end

puts vamp_name
puts vamp

if vamp_name == true
	puts "Definitely a vampire."
else
	if vamp == 1
		puts "Probably not a vampire."
	elsif vamp == 2
		puts "Probably a vampire."
	elsif vamp == 3
		puts "Almost certainly a vampire."
	else
		puts "Results inconclusive."
	end
end