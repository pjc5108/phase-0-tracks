class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_barks)
  	num_barks.times {
  		puts "Woof!"
  	}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years
  	puts "How many human years are you converting to dog years?"
  	human_years = gets.to_i
  	pup_years = human_years * 7
  	puts " #{human_years} human years is equal to #{pup_years} dog years!"
  end

  def handshake
  	puts "*puppy puts its paw in your hand*"
  end
  
end


new_dog = Puppy.new

new_dog.fetch("bone")

new_dog.speak(5)

new_dog.roll_over

new_dog.dog_years

new_dog.handshake