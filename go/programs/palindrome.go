package programs
/*		input samples {{"aba"},{"ab6ba"},{"abba"},{"5665"}}
		Time complexity is O(N)
		Space complexity is O(1)
 */
func Palindrome(look string) bool {
	if look == ""{
		return true
	}
	start := 0
	end := len(look)-1
	for look[start] == look[end]{
		start++
		end--
		if start >= end{
			return true
		}
	}
	return false
}
