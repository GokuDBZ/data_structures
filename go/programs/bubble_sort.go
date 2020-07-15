package programs

import (

)

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
					// doing swap
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

}
