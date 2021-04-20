package programs

func MaxArea(height []int) int {
	area, max := 0, 0
	i, j := 0, len(height)-1
	for i < j {
		area = min(height[i], height[j]) * (j - i)
		if area >= max {
			max = area
		}
		if height[i] <= height[j] {
			i++
		} else {
			j--
		}
	}
	return max
}
func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
