class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		#@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@gender = gender
		@ethnicity = ethnicity
		@age = rand(140)
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


end

	# santa = Santa.new
	# santa.speak
	# santa.eat_milk_and_cookies("Oreo")

santas = []

# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")

# p santas
# santas[0].celebrate_birthday
# p santas
# santas[0].get_mad_at("Prancer")
# p santas
# santas[0].gender = "Female"
# p santas
# puts "Santa is #{santas[0].age} years old."
# puts "Santa is #{santas[0].ethnicity}."

genders = [ "Male", "Female", "Prefer not to say"]
ethnicities = ["black", "white", "hispanic", "asian", "alien", "narnian", "dunedain"]
50.times do
	santas << Santa.new(genders.sample, ethnicities.sample)
end

print santas