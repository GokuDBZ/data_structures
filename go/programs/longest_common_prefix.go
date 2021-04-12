package programs

func LongestCommonPrefix(strs []string) string {
	match := ""
	if len(strs) > 0 {
		for i, _ := range strs[0] {
			check := strs[0][i]
			j := 1
			for j < len(strs) {
				if i < len(strs[j]) {
					if strs[j][i] == check {
						j++
					} else {
						break
					}
				} else {
					return match
				}
			}
			if j != len(strs) {
				return match
			} else {
				match += string(check)
			}
		}
	}

	return match
}
