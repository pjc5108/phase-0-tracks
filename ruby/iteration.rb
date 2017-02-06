def say_howdy
	name1 = "Greg"
	puts "Howdy partner!"
	yield(name1)
end

say_howdy { |snake_name| puts "There's a snake in my boot! I named it #{snake_name}."}