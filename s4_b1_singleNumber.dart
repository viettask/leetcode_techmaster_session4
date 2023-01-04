//Bài 1: https://leetcode.com/problems/single-number/description/

class Solution {
  int singleNumber(List<int> nums) {
    //Sort the array to know if 2 duplicate values exist
    nums.sort();
    var result;


    if (nums.length == 1) {
      //if the array only one item
      return nums.last;
    } else {
      //if the array has more than one item
      int i = 0;

      //Check the position of single value item
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
