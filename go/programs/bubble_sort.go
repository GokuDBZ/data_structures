package programs

func BubbleSort(array []int) []int {
	// array length
		size := len(array)-1
		var iteration int
		// assume that array is not sorted
		isSorted:= false
		for !isSorted{
			// not go outside the loop until we get the complete sorted array
			isSorted = true
			for index:= 1; index <= size-iteration; index++{
				if array[index-1] > array[index]{
					isSorted = false
					temp := array[index]
					array[index] = array[index-1]
					array[index-1] = temp
				}
				//fmt.Println("--",array)
			}
			iteration++
			//fmt.Println("-",array)
		}

		return array
		
	// we can also apply the below code for the bubble sort
	//check the code after uncommenting it

	/*size := len(array)-1
	var iteration, swap int
	for _= range array{
		swap = 0
		for index:= 1; index <= size-iteration; index++{
			if array[index-1] > array[index]{
				swap++
				temp := array[index]
				array[index] = array[index-1]
				array[index-1] = temp
			}
			if swap == 0 && index== size -iteration{
				return array
			}
			fmt.Println("--",array)
		}
		iteration++
		fmt.Println("-",array)
	}

	return array*/

}
