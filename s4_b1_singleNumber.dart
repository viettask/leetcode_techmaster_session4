//Bài 1: https://leetcode.com/problems/single-number/description/

class Solution {
  int singleNumber(List<int> nums) {
    nums.sort();
    var result;
    if (nums.length == 1) {
      return nums.last;
    } else {
      int i = 0;
      while (i < nums.length - 1) {
        if ((nums[i] != nums[i + 1]) && i < nums.length - 1) {
          result = nums[i];
          break;
        }
        i += 2;
      }
      return (result == null) ? nums.last : result;
    }
  }
}
