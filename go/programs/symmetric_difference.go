package programs

import "sort"

func symmetricDifference(inputArray, inputArray2 []int) ([]int, []int) {
	firstArrayIndex, secondArrayIndex := 0, 0
	firstArraySize, secondArraySize := len(inputArray), len(inputArray2)
	sort.Ints(inputArray)
	sort.Ints(inputArray2)
	symmetric, difference := make([]int, firstArrayIndex+secondArrayIndex), make([]int, firstArrayIndex+secondArrayIndex)
	for firstArrayIndex < firstArraySize && secondArrayIndex < secondArraySize {
		if inputArray[firstArrayIndex] == inputArray2[secondArrayIndex] {
			symmetric = append(symmetric, inputArray[firstArrayIndex])
			firstArrayIndex++
			secondArrayIndex++
		}
		if inputArray[firstArrayIndex] < inputArray2[secondArrayIndex] {
			secondArrayIndex++
		} else {
			difference = append(difference, inputArray[firstArrayIndex])
			firstArrayIndex++
		}
	}
	return symmetric, difference
}
