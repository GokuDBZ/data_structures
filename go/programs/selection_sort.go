package programs
func SelectionSort(array []int) []int {
	// size of array
	size := len(array)
	for index, _ := range array {
		// for pointing smallest value in sub array
		// initially the value will be starting position of array
		pointer:= index
		for i:= index+1; i < size; i++{
			if array[pointer] > array[i]{
				// assigning the smallest value position in sub array
				pointer = i
			}
		}
		// we can make function for swap or use the same code
		temp:= array[pointer]
		array[pointer] = array[index]
		array[index] = temp
	}
	return array
}