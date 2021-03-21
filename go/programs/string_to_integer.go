package programs

import (
	"math"
	"strconv"
)

func MyAtoi(s string) int {
	positive, status := true, false
	numberPresent := false
	number := 0
	for i, _ := range s {
		switch string(s[i]) {
		case " ":
			if numberPresent == true || status == true{
				if positive == false {
					return -number
				}
				return number
			}
			continue
		case "-":
			if status == false && numberPresent == false {
				positive = false
				status = true
			} else {
				if positive == false {
					return -number
				}
				return number
			}
			continue
		case "+":
			if status == false && numberPresent == false {
				status = true
			} else {
				if positive == false {
					return -number
				}
				return number
			}
			continue
		}
		if s[i] >= 65 && s[i] <= 90 || s[i] >= 97 && s[i] <= 122 || s[i] == 46 {
			break
		} else {
			if numberPresent == false {
				numberPresent = true
			}
			temp, _ := strconv.Atoi(string(s[i]))
			number = number*10 + temp
		}
		if number > math.MaxInt32 {
			if positive == false {
				return math.MinInt32
			}
			return math.MaxInt32
		}
	}
	if positive == false {
		number = -1 * number
	}
	return number
}
