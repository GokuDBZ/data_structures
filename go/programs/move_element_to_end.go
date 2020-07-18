package programs

/*
	Input samples{{-2,-2,2,2,-2,4,1,2,0,5,-2,4,2,0,1,5,2,2,-2,-2},{-2,2,2,2,2,4,1,2,0,5,2,4,2,0,1,5,2,2,2,2},
		{4,1,2,0,5,2,4,2,0,1,5,2,2}}
	Time complexity will be O(n)
	Space complexity will be O(1)
 */

func MoveElement(inputArray []int, toMove int) []int{
	endPointer := len(inputArray)- 1
	for startPointer, value := range inputArray{
		if startPointer > endPointer{
			break
		}
		if value == toMove {
			for {
				if inputArray[endPointer] == toMove {
					endPointer--
				}else{
					break
				}
			}
			// moving the require number to the last of array
			inputArray[startPointer] = inputArray[endPointer]
			inputArray[endPointer] = toMove
			endPointer--
		}
	}
	return inputArray
}
