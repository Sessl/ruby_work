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



#This method accepts a block 
#The block accepts two arguments which are the values that are being compared at that point which are passed via yield.

def bubble_sort_by(arr)
	swapped = true
	while swapped
		swapped = false
		for i in 0..arr.length-2
		    y = yield(arr[i],arr[i + 1])
		    if y == 1
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end
	end
	return arr
end

array =  bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
	     right <=> left
         end

puts array
