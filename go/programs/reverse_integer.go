package programs

import "math"

func Reverse(x int) int {
	temp := 0
	for x != 0 {
		temp = temp * 10 + x % 10
		x = x / 10
		if temp > math.MaxInt32 || temp < math.MinInt32{
			return 0
		}
	}
	return temp
}
