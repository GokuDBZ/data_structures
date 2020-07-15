package programs
func SelectionSort(inputArray []int) []int {
	// size of inputArray
	size := len(inputArray)
	for index, _ := range inputArray {
		// for pointing smallest value in sub inputArray
		// initially the value will be starting position of inputArray
		pointer:= index
		for i:= index+1; i < size; i++{
			if inputArray[pointer] > inputArray[i]{
				// assigning the smallest value position in sub inputArray
				pointer = i
			}
		}
		// we can make function for swap or use the same code
		temp:= inputArray[pointer]
		inputArray[pointer] = inputArray[index]
		inputArray[index] = temp
	}
	return inputArray
}
