package programs

func IsPalindrome(x int) bool {
	checkNumber, number := 0, x
	if x < 0 {
		return false
	} else {
		for x != 0 {
			checkNumber = checkNumber*10 + x%10
			x = x / 10
		}
		if checkNumber == number {
			return true
		}
	}
	return false
}
