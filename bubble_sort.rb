#Algorithms for bubble sort
#This method takes in an array and returns a sorted array

def bubble_sort(arr)
	swap_counter = 1
	while swap_counter !=0
		swap_counter = 0

		for i in 0..arr.length - 2
			if (arr[i+1] < arr[i])
				temp = arr[i]
				arr[i] = arr[i+1]
				arr[i+1] = temp
				swap_counter += 1

			end
		end

	end
	return arr

end

a = [3, 6, 2, 5, 8, 1, 7, 4]
puts bubble_sort(a)




