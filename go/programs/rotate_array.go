package programs

import "log"
/*
	The time complexity will be O(n) and space complexity will be O(1)
 */

func RotationArray(inputArray []int, length int)[]int{
	size := len(inputArray)-1	//size of array
	rightPointer, leftPointer := 0, size	//pointer for right and left movement
	for rightPointer <= leftPointer{
		// reversing the array elements using left and right pointer
		inputArray[leftPointer],inputArray[rightPointer] = inputArray[rightPointer],inputArray[leftPointer]
		leftPointer--
		rightPointer++

	}
	leftPointer = size -length //assign the last position
	temp := 0
	for temp <= leftPointer{
		//swapping the n-length size elements
		inputArray[temp], inputArray[leftPointer] = inputArray[leftPointer], inputArray[temp]
		temp++
		leftPointer--
	}
	rightPointer = size
	temp = size-length+1

	for temp <= rightPointer {
		//swapping the total length size elements
		inputArray[temp], inputArray[rightPointer] = inputArray[rightPointer], inputArray[temp]
		log.Println(inputArray)
		temp++
		rightPointer--
	}

	return inputArray
}
