package programs

func InsertionSort(inputArray []int) []int {
	for index, _:= range inputArray {
		j := index
		for j >0 {
			if inputArray[j] < inputArray[j-1]{
				// calling swap method or we can wrie the same code for swap
				swap(j, j-1, inputArray)
			}else {
				break
			}
			// decrementing value
			j-=1
			//fmt.Println("--",inputArray)
		}
		//fmt.Println("-",inputArray)
	}
	return inputArray
}
// for swapping value
func swap(j , i int, array []int){
	temp := array[j]
	array[j] = array[i]
	array[i] = temp
}
