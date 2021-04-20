package programs
/*
	by using map(array index value is key and position is value) and compliment is
	target value minus the current index array value if that value is present in map
	then return else add that array index and value in map
*/
func twoSumWithMap(nums []int, target int) []int {
	// creating value variable of type map
	value := make(map[int]int)

	for i, _ := range nums{
		compliment := target - nums[i] // check the required value
		if _, ok := value[compliment]; ok { // compliment value is present or not
			return []int{value[compliment], i}
		}
		value[nums[i]] = i
	}
	return []int{}
}
