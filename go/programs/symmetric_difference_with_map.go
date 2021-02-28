package programs

import "fmt"
/*
	we have to find the
 */

func SymmetricDifference(inputArray , inputArray2 []int)([]int, []int){
	firstArrayIndex, secondArrayIndex := 0,0
	firstArraySize, secondArraySize := len(inputArray), len(inputArray2)
	 symmetric ,difference := make([]int,firstArrayIndex+secondArrayIndex), make([]int,firstArrayIndex+secondArrayIndex)
	look := make(map[int]int)
	 for firstArrayIndex < firstArraySize && secondArrayIndex < secondArraySize{
	 	look[inputArray[firstArrayIndex]] +=1
	 	look[inputArray2[secondArrayIndex]] += 1
	 	firstArrayIndex++
	 	secondArrayIndex++
	 }
	 fmt.Println(look)
	for k, v := range look {
		if v ==1 {
			symmetric = append(symmetric, k)
		}else{
			difference = append(difference, k)
		}
	}
	return symmetric, difference
}