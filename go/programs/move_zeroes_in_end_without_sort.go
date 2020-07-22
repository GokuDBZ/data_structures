package programs
/*	input samples {{-2,-3,-4,9,8,7,6,4,4,5,5,2,3,-5,-6},
			{0,2,3,0,0,8}, {4,0,6,0,7}}
	Time complexity will be O(n)
	Space complexity will be O(1)
*/

func ZeroMove(inputArray []int)[]int {
	move := 0  
	for _ , value := range inputArray {
		/* checking each data not equal to zero
		   if yes then move the data and increment the move pointer */
		if value!= 0{
			inputArray[move] = value
			move++
		}
	}
	// putting zeroes in inputArray to the last if array
	if move != len(inputArray)-1{
		for i:= move ; i < len(inputArray);i++{
			inputArray[i] = 0
		}
	}

	return inputArray
}
