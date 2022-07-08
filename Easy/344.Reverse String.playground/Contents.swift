/**
 Write a function that reverses a string. The input string is given as an array of characters s.

 You must do this by modifying the input array in-place with O(1) extra memory.

  

 Example 1:
 Input: s = ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 
 Example 2:
 Input: s = ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
  

 Constraints:
 - 1 <= s.length <= 105
 - s[i] is a printable ascii character.
 */
class Solution {
    func reverseString(_ s: inout [Character]) {
        let midIndex = s.count / 2
        let count = s.count
        for i in 0..<midIndex {
            let a = s[i]
            let b = s[count - 1 - i]
            s[i] = b
            s[count - 1 - i] = a
        }
    }
}
let s = Solution()
var arr: [Character] = ["H","a","n","n","a","h"]
s.reverseString(&arr)
print(arr)
