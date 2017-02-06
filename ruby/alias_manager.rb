def switch_name(name)
  name = name.downcase.split(" ").reverse.join(" ")
  return name
end
switch_name("phil cornman")

def next_vowel(name)
  vowels="aeiou"
	index = 0
	while index < name.length
	  i_name = name[index]
		if vowels.index("#{i_name}") != nil
			name[index] = vowels[vowels.index("#{i_name}") + 1]
			index += 1
		else
			index += 1
		end
	end
	return name
	puts name
end


def next_cons(name)
  cons="bcdfghjklmnpqrstvwxyz"
	index = 0
	while index < name.length
	  i_name = name[index]
		if cons.index("#{i_name}") != nil
			name[index] = cons[cons.index("#{i_name}") + 1]
			index += 1
		else
			index += 1
		end
	end
	return name
	puts name
end


name = "Philip Cornman"
name = next_cons("#{next_vowel("#{switch_name(name)}")}").split.map(&:capitalize).join(' ')
puts name

