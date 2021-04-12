package programs

/*
	Input samples{{-2,-2,2,2,-2,4,1,2,0,5,-2,4,2,0,1,5,2,2,-2,-2},{-2,2,2,2,2,4,1,2,0,5,2,4,2,0,1,5,2,2,2,2},
		{4,1,2,0,5,2,4,2,0,1,5,2,2},{2,1,2,2,2,3,4,2}}
	Time complexity will be O(n)
	Space complexity will be O(1)
*/

func MoveElement(inputArray []int, toMove int) []int {
	startPointer := 0
	endPointer := len(inputArray) - 1
	for startPointer < endPointer {
		for startPointer < endPointer && inputArray[endPointer] == toMove {
			endPointer--
		}
		if inputArray[startPointer] == toMove {
			// moving the require number to the last of array
			inputArray[startPointer] = inputArray[endPointer]
			inputArray[endPointer] = toMove
			endPointer--
		}
		startPointer++
	}
	return inputArray
}
