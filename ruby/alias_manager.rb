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


code_name_db = {

}

name = ""
while name != "exit" do
  
  puts "Welcome to the secret codename generator!"
  puts "What is your first and last name?"
  name = gets.chomp
  if name != "exit"
  code_name = next_cons("#{next_vowel("#{switch_name(name)}")}").split.map(&:capitalize).join(' ')
  
  puts "Your codename is #{code_name}."
  puts ""
  code_name_db[ name.to_sym ] = code_name
  else
  end

  
end
puts code_name_db