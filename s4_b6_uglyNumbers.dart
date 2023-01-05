//Bài 6: https://leetcode.com/problems/ugly-number/description/

class Solution {
  bool isUgly(int n) {
    if (n == 0) {
      return false;
    }

    //If value n is 1, it is out of the loop and return true
    while (n != 1) {
      //check if value has prime factor 2
      //value would be divided by 2 to check again
      if (n % 2 == 0) {
        n = (n / 2).toInt();
        continue;
      }
      //check if value has prime factor 3
      //value would be divided by 3 to check again
      if (n % 3 == 0) {
        n = (n / 3).toInt();
        continue;
      }
      //check if value has prime factor 5
      //value would be divided by 5 to check again
      if (n % 5 == 0) {
        n = (n / 5).toInt();
        continue;
      }
      return false;
    }
    return true;
  }
}
