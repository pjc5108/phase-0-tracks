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


def fib_gen(num)
	fib_arr = [0, 1]
	index_1 = 0
	index_2 = 1
	until index_2 == num -1
		new_term = fib_arr[index_1] + fib_arr[index_2]
		fib_arr.push(new_term)
		index_1 += 1
		index_2 += 1	
	end
	p fib_arr
end

fib_gen(100)
if fib_gen(100).last == 218922995834555169026
	puts "Your Fibonacci Generator works!"
else
	puts "You still have some work to do!"
end



def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

test = [ 1, 8, 9, 7, 6, 12, 2, 3, 4, 10]
bubble_sort(test)