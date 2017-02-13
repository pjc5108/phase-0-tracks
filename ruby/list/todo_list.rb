class TodoList
	

	def initialize(list)
		@list = list
	end

	def get_items
		return @list
	
	end

	def add_item(added_item)
		@list << added_item
		return @list

	end

	def delete_item(deleted_item)
		@list.delete(deleted_item)
		return @list

	end

	def get_item(index)
		return @list.fetch(index)

	end
end

#This took me over an hour... am I not getting this quick enough?


