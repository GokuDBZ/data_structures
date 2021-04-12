package programs

import "math"

func LengthOfLongestSubstring(s string) int {
	substring := make(map[uint8]float64)
	length, i := 0.0, 0.0

	for j, _ := range s {
		if value, available := substring[s[j]]; available {
			i = math.Max(value, i)
		}
		substring[s[j]] = float64(j)
		length = math.Max(length, float64(j)-i+1)
	}
	return int(length)
}
