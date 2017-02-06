
def say_howdy
	name1 = "Greg"
	puts "Howdy partner!"
	yield(name1)
end

say_howdy { |snake_name| puts "There's a snake in my boot! I named it #{snake_name}."}







colors = ["red", "blue", "orange", "green", "yellow"]
callsign = ["one", "two", "three", "four", "five"]
puts "Original data:"
p colors

colors.each do |color|
	puts color
end

index = -1
colors.map! do |color|
	index += 1
	color << " " + callsign[index]
end

puts "After .map call:"
p colors



objects = {
	red: "fire truck",
	blue: "sky",
	orange: "clementine",
	green: "grass",
	yellow: "sun"
}

objects.each do |obj_color, object|
	puts "The #{object} is #{obj_color}."
end


rand_num = [42, 37, 26, 50, 19]

movies = {
	comedy: "Zoolander",
	fantasy: "Harry Potter",
	sci_fi: "Avatar",
	action: "Fast and Furious"
}

#Task 1
#rand_num.delete_if {|num| (num % 8) < 3 }
#p rand_num

#movies.delete_if { |genre, movie| movie.length < 10}
#p movies

#Task 2
#rand_num.keep_if {|num| (num % 2) == 0 }
#p rand_num

#movies.keep_if { |genre, movie| genre.length > 6 }
#p movies

#Task 3
#new_rand_num = []
#new_rand_num << rand_num.select {|num| num > 30}
#p new_rand_num
#don't know why my output looks like => [[42, 37, 50]]

#new_movies = {}
#new_movies << movies.select { |genre, movie| movie.length < 10 }
#p new_movies
#this doesn't work, need to figure this out. pretty sure it's because << doesn't work with hash.

#Task 4
#Need to move on

