package programs

import (
	"sort"
)

/*
	input samples {{-2,-3,-4,9,0,8,0,4,5,0,0,5,2,3,-5,0,-6},
			{0,2,3,0,0,8}, {4,0,6,0,7}}
	Time complexity will be O(n)
	Space complexity will be O(1)
*/

func MovesZeroesWithSort(inputArray []int) []int {
	// sorting array
	sort.Ints(inputArray)
	z := len(inputArray) - 1
	counter := z
	for index := 0; index <= z; index++ {
		if inputArray[index] > 0 {
			break
		}
		// moving zeroes to the end
		if inputArray[index] == 0 {
			inputArray[index] = inputArray[counter]
			inputArray[counter] = 0
			counter--
		}
		if index == counter {
			break
		}
	}

	return inputArray
}
