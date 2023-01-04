//Bài 3: https://leetcode.com/problems/number-complement/

// int power(int x, int n) {
//   int retval = 1;
//   for (int i = 0; i < n; i++) {
//     retval *= x;
//   }

//   return retval;
// }

// import 'dart:math';
// 8²
// final answer = pow(8, 2); // 64

class Solution {
  int findComplement(int num) {
    List<String> binaryNum = num.toRadixString(2).split('');
    for(int i=0;i<binaryNum.length;i++)
    {
      binaryNum[i] = (binaryNum[i] =="1"? "0":"1");
    }
    return int.parse(binaryNum.join(''), radix: 2);
  }
}
