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