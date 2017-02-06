def search_array(arr, num)
  index = 0
	arr.each {|element|
		if (element/num == 1) && (element%num == 0)
			puts index
			return index
			index += 1
		else
		  index += 1
		end
	}

end	

test_array = [85, 22, 57, 34, 11]
search_array(test_array, 11)