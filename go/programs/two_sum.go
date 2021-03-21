package programs

func twoSum(nums []int, target int) []int {
	size := len(nums) - 1
	for i := range nums {
		for j := i + 1; j <= size; j++ {
			if target == nums[i]+nums[j] {
				return []int{i, j}
			}
		}
	}
	return []int{-1, -1}
}
