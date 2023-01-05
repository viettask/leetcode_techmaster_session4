//Bài 6: https://leetcode.com/problems/ugly-number/description/

class Solution {
  bool isUgly(int n) {
    if (n == 0) {
      return false;
    }
    while (n != 1) {
      if (n % 2 == 0) {
        n = (n / 2).toInt();
        continue;
      }
      if (n % 3 == 0) {
        n = (n / 3).toInt();
        continue;
      }
      if (n % 5 == 0) {
        n = (n / 5).toInt();
        continue;
      }
      return false;
    }
    return true;
  }
}
