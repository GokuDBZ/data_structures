package programs

func BubbleSort(inputArray []int) []int {
	// inputArray length
		size := len(inputArray)-1
		var iteration int
		// assume that inputArray is not sorted
		isSorted:= false
		for !isSorted{
			// not go outside the loop until we get the complete sorted inputArray
			isSorted = true
			for index:= 1; index <= size-iteration; index++{
				if inputArray[index-1] > inputArray[index]{
					isSorted = false
					// we can make function for swap or use the same code
					temp := inputArray[index]
					inputArray[index] = inputArray[index-1]
					inputArray[index-1] = temp
				}
				//fmt.Println("--",inputArray)
			}
			iteration++
			//fmt.Println("-",inputArray)
		}

		return inputArray
		
	// we can also apply the below code for the bubble sort
	//check the code after uncommenting it

	/*size := len(inputArray)-1
	var iteration, swap int
	for _= range inputArray{
		swap = 0
		for index:= 1; index <= size-iteration; index++{
			if inputArray[index-1] > inputArray[index]{
				swap++
				temp := inputArray[index]
				inputArray[index] = inputArray[index-1]
				inputArray[index-1] = temp
			}
			if swap == 0 && index== size -iteration{
				return inputArray
			}
			fmt.Println("--",inputArray)
		}
		iteration++
		fmt.Println("-",inputArray)
	}

	return inputArray*/

}
