require sqlite3
#require faker


# create SQL database
db = SQLite3::Database.new("test.db")

# create a table
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS test(
	id integer PRIMARY KEY,
	name VARCHAR(255),
	codename VARCHAR(255)
	)
SQL

# Execute the create table command

db.execute(create_table_cmd)


# define methods

def switch_name(name)
  name = name.downcase.split(" ").reverse.join(" ")
  return name
end

# Forces the parameter 'name' to be all lower case, splits the first and last name into
# seperate elements in an array, reverse the ordering of the elements (so it would
# technically work with a middle name as well), then joins the elements with a space.


def next_vowel(name)
  vowels="aeiou"
	index = 0
	while index < name.length
	  current_letter = name[index]
		if ( vowels.index("#{current_letter}") != nil ) and ( vowels.index("#{current_letter}") != 4
			name[index] = vowels[vowels.index("#{current_letter}") + 1]
			index += 1
		elsif vowels.index("#{current_letter}" == 4
			name[index] = vowels[0]
			index += 1
		else
			index += 1
		end
	end
	return name
end

# By initializing index to 0, checks each letter to see if it is a vowel. If it is a vowel
# i.e. the test to see if that letter exists in the vowels string returns something other
# than nil, the letter at that indexed location is replaced by its successive vowel.
# In the event that 'u' is the vowel being checked, it will be replaced by 'a'.


def next_cons(name)
  cons="bcdfghjklmnpqrstvwxyz"
	index = 0
	while index < name.length
	  i_name = name[index]
		if ( cons.index("#{i_name}") != nil ) and ( cons.index("#{i_name}") != 20 )
			name[index] = cons[cons.index("#{i_name}") + 1]
			index += 1
		elsif cons.index("#{i_name}") == 20
			name[index] = cons[0]
			index += 1
		else
			index += 1
		end
	end
	return name
end

# see above for same logic, just a different string.

def create_entry()
	db.execute( "INSERT INTO test (name, codename) VALUES (?, ?)", [name, code_name])

end

# create_entry will create an entry(row) in the database

def list_entries

end

# list_entries will



# Add user interface


puts "Welcome to the secret codename generator!"
puts "What is your first and last name?"
name = gets.chomp
  if name != "exit"
  	code_name = next_cons("#{next_vowel("#{switch_name(name)}")}").split.map(&:capitalize).join(' ')
  
  	puts "Your codename is #{code_name}."
  	puts ""

  	create_entry

  else
  	puts "Here is a list of registered codenames so far:"
  end

  


