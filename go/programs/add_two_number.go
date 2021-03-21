package programs

//Definition for singly-linked list.
type ListNode struct {
	Val  int
	Next *ListNode
}

func AddTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
	dummy := &ListNode{}
	head := dummy
	carry := 0
	for l1 != nil || l2 != nil {
		sum := carry
		if l1 != nil {
			sum += l1.Val
		}
		if l2 != nil {
			sum += l2.Val
		}
		carry = sum / 10
		head.Next = &ListNode{Val: sum % 10}
		head = head.Next
	}
	if carry > 0 {
		head = &ListNode{Val: carry,
		}

	}
	return head
}
