package programs
/*	input samples {{""},{"abaaba"},{"cbcbdcbc"},{"ab"}}
	Time complexity is O(N)
	Space complexity is O(N)
 */
func RecursionPalindrome(input string, initialIndex int ) bool{
	lastIndex := len(input)- 1 - initialIndex
	if initialIndex >= lastIndex {
		return true
	}
	if input[initialIndex] != input[lastIndex]{
		return false
	}
	return RecursionPalindrome(input, initialIndex+1)
}
