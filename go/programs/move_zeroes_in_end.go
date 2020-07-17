package programs

func ZeroMove(array []int)[]int {
	move := 0  
	for _ , value := range array{
		/* checking each data not equal to zero
		   if yes then move the data and increment the move pointer */
		if (value!= 0){
			array[move] = value
			move++
		}
	}
	// putting zeroes in array to the last
	for i:= move ; i < len(array);i++{
		array[i] = 0
	}
	return array
}