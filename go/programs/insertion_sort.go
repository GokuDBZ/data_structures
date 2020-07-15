package programs

import "fmt"

func InsertionSort(array []int) []int {
	for index, _:= range array{
		j := index
		for j >0 {
			if array [j] < array[j-1]{
				// calling swap method or we can wrie the same code for swap
				swap(j, j-1, array)
			}else {
				break
			}
			// decrementing value
			j-=1
// 			fmt.Println("--",array)
		}
// 		fmt.Println("-",array)
	}
	return array
}
// for swapping value
func swap(j , i int, array []int){
	temp := array[j]
	array[j] = array[i]
	array[i] = temp
}
