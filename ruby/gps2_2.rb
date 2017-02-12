# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Using spaces as a delimiter break up individual items in the string into an array.
  # Create a new hash
  # For each element in the array, create a key value in the hash
  # set default quantity as 1 for pair value of each key
  # The value of the keys will be the quantity of the item
  #
  # print the list to the console [can you use one of your other methods here?]
# output: hash (keys and their pair values)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
	# Use the shovel method to create a new key from user input
# output: hash with updated items

# Method to remove an item from the list
# input: list, item name
# steps: Use specified list to refer to the hash, and specified key to refer to the key within the hash
		#Look up item in list, if it exists, remove it. If it does not, do nothing.
# output: new hash with item names and their pair values

# Method to update the quantity of an item
# input: list, item name getting updated, and updated quantity
# steps: 
# Look up item in list.
	# If it exists, update quantity
#change the pair value of key within the specified hash
# output: hash with item names and updated quantities

# Method to print a list and make it look pretty
# input: hash
# steps: Add a header titles 'Grocery List'
		# List the keys used in the hash as a string with : to the right of them
		# To the right of the key values list its pair value
# output: A nice looking table of the keys and their pair values



groc_list = ""

def create_list(groc_string)
	groc_array = groc_string.split(' ')

	groc_hash = {}

	groc_array.each { |e| groc_hash[e] = 1}

	print groc_hash

	return groc_hash
end

def add_item(list, item_name, quantity = 1)

	if list.has_key?(item_name) == false

		list[item_name] = quantity
	else
		puts "That item is already on your list."
	end

	print list

	return list
end

def remove_item (list, item_name)

	if list.has_key?(item_name) == true

		list.delete(item_name)
	else
		puts "That item is not on your list."
	end

	print list

	return list
end

def update_quantity(list, item_name, quantity)

	if list.has_key?(item_name) == true

		list[item_name] = quantity
	else
		puts "That item is not on your list."
	end

	print list

	return list
end

def print_list(list)

	puts "Grocery List"
	puts "------------"
	list.each {|key, value| puts key + ": " + value }
	puts ""
end


