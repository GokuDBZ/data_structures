package programs

var roman = map[byte]int{
	'I': 1,
	'V': 5,
	'X': 10,
	'L': 50,
	'C': 100,
	'D': 500,
	'M': 1000,
}

func RomanToInt(s string) int {
	sum := 0

	for i := 0; i < len(s); {
		val := roman[s[i]]

		if i == len(s)-1 {
			sum += val
			break
		}

		nextVal := roman[s[i+1]]

		// This case captures IV, IX, XL, CM, etc.
		if val < nextVal {
			sum += nextVal - val
			i += 2
		} else {
			sum += val
			i++
		}
	}
	return sum
}
