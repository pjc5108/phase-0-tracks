# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(num_barks)
#   	num_barks.times {
#   		puts "Woof!"
#   	}
#   end

#   def roll_over
#   	puts "*rolls over*"
#   end

#   def dog_years
#   	puts "How many human years are you converting to dog years?"
#   	human_years = gets.to_i
#   	pup_years = human_years * 7
#   	puts " #{human_years} human years is equal to #{pup_years} dog years!"
#   end

#   def handshake
#   	puts "*puppy puts its paw in your hand*"
#   end

#   def initialize
#   	print "Initializing new puppy instance..."
#   end

# end


# new_dog = Puppy.new

# new_dog.fetch("bone")

# new_dog.speak(5)

# new_dog.roll_over

# new_dog.dog_years

# new_dog.handshake


class Astronaut

	def initialize
		print "Astronauts initialized."
		print "---"
		print ""
	end

	def grav_boost(planet_body)


		puts "I'm using #{planet_body.sample} as a gravity boost."

		
	end

	def docking(station)

	puts "Requesting docking privileges with the #{station.sample}, over."

	end

end

#astro_list = Array.new(50) { |i| "Astronaut " << (i + 1).to_s}

astro_list = []

50.times do
	astro_list << Astronaut.new
end

p astro_list

body_list = ["Mars", "the Moon", "Earth", "Titan"]

station_list = [ "Nebechudnezzar", "Tempest", "Citadel"]

astro_list.each { |e| e.grav_boost(body_list)}

astro_list.each { |e| e.docking(station_list)}










