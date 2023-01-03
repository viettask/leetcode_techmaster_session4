//Bài 2: https://leetcode.com/problems/move-zeroes/description/

class Solution {
  void moveZeroes(List<int> nums) {
    int zeroAdd = 0;
    nums.forEach((item) {
      if (item == 0) {
        zeroAdd++;
      }
    });
    if (nums.length > 1) {
      nums.removeWhere((item) => item == 0);
      List<int> zeros = List.filled(zeroAdd, 0);
      nums.addAll(zeros);
    }
  }
}
