class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
	end

	#getter methods


	#setter methods
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reinder_name)
		@reindeer_ranking.delete(reinder_name)
		@reindeer_ranking << reinder_name
	end

	def gender=(new_gender)
		@gender = new_gender
	end



end

	# santa = Santa.new
	# santa.speak
	# santa.eat_milk_and_cookies("Oreo")

santas = []

# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")

p santas
santas[0].celebrate_birthday
p santas
santas[0].get_mad_at("Prancer")
p santas
santas[0].gender = "Female"
p santas