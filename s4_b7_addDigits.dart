//Bài 7: https://leetcode.com/problems/add-digits/description/


class Solution {
  int addDigits(int num) {
    int result = 0;
    List<int> numInt = intToListInt(num);
    if (num != 0) {
      while (result > 9 || result == 0) {
        result = sum(numInt);
        numInt = intToListInt(result);
      }
    }
    return result;
  }
}

//Sum of all items from an int array
int sum(List<int> nums) {
  int result = 0;
  for (int i = 0; i < nums.length; i++) {
    result += nums[i];
  }
  return result;
}

//function to separate every digit of a number (int)
List<int> intToListInt(int num) {
  List<String> numStr = num.toString().split('');
  List<int> numInt = [];
  numStr.forEach((item) {
    numInt.add(int.parse(item));
  });
  return numInt;
}
