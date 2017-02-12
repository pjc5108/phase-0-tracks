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


class Astronauts

	def initialize
		print "Astronauts initialized."
		print "---"
		print ""
	end

	def grav_boost(astronaut, planet_body)

		puts "#{astronaut} is using the #{planet_body} as a gravity boost."
		
	end

	def docking(astronaut, station)

	puts "#{astronaut} is requesting docking privelidges with #{station}, over."

	end

end

astro_list = Array.new(5, "Astronaut ")
index = 0
number = 1
until index == 5 do
	astro_list[index] << "#{number}"
	index += 1
	number += 1
	
end

p astro_list






