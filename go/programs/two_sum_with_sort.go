package programs
import(
	"fmt"
	"sort"
)

/*
	we have done sorting on and then try to find out the
	target sum value and return the values whose sum give the target value
 */
func twoSumWithSort(nums []int, target int) []int {
	sort.Ints(nums) //sorting the array
	left := 0
	right := len(nums)-1
	fmt.Printf("initial value left: %v right: %v\n", left, right)
	fmt.Println("slice",nums)
	for _, _ = range nums {
		if target > nums[left] + nums[right]{
			left++
			fmt.Println("left: ",left)
		}else if target < nums[left] + nums[right]{
			right--
			fmt.Println("right: ",right)
		}
		if target == nums[left] + nums[right]{
			return []int{left,right}
		}

		if left == right{
		break
		}
	}
	return []int{-1,-1}
}