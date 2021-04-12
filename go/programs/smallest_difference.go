package programs

import (
	"fmt"
	"math"
	"sort"
)

func SmallestDiffernce(inputArray, inputArray2 []int) [2]int {
	sort.Ints(inputArray)
	sort.Ints(inputArray2)
	firstArrayIndex, secondArrayIndex := 0, 0
	var num [2]int
	difference := math.MaxUint32
	firstArrayLength, secondArrayLength := len(inputArray)-1, len(inputArray2)-1
	for firstArrayIndex <= firstArrayLength && secondArrayIndex <= secondArrayLength {
		temp := int(math.Abs(float64(inputArray[firstArrayIndex]) - float64(inputArray2[secondArrayIndex])))
		if temp < difference {
			difference = temp
			num[0] = inputArray[firstArrayIndex]
			num[1] = inputArray2[secondArrayIndex]
		}
		fmt.Println(difference)
		if inputArray[firstArrayIndex] == inputArray2[secondArrayIndex] {
			break
		}
		if inputArray[firstArrayIndex] < inputArray2[secondArrayIndex] {
			firstArrayIndex++
		} else {
			secondArrayIndex++
		}
	}
	return num
}
