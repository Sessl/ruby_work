#Algorithms for bubble sort
#This method takes in an array and returns a sorted array

def bubble_sort(arr)
	swapped = true
	while swapped
		swapped = false

		for i in 0..arr.length - 2
			if (arr[i+1] < arr[i])
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end

	end
	return arr

end

a = [3, 6, 2, 5, 8, 1, 7, 4]
puts bubble_sort(a)




