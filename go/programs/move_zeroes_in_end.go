package programs

func ZeroMove(array []int)[]int {
	move := 0  
	for _ , value := range array{
		if (value!= 0){
			array[move] = value
			move++
		}
	}
	for i:= move ; i < len(array);i++{
		array[i] = 0
	}
	return array
}