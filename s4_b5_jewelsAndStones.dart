//Bài 5: https://leetcode.com/problems/jewels-and-stones/

//Solution 1
class Solution {
  int numJewelsInStones(String jewels, String stones) {
                int times=0;
        //using 2 loop to find the value of times
        for(int i=0;i<stones.length;i++)
        {
                  for(int j=0;j<jewels.length;j++)
        {
          
                    if(stones[i] == jewels[j])
                    {
                      times++;
                    }
        }
        }
    return times;
  }
}

//Solution 2
class Solution {
  int numJewelsInStones(String jewels, String stones) {
        int times=0;
        List<String> jewelsStr= jewels.split('');
        List<String> stonesStr= stones.split('');
        //Using built-in function to find the value of times
        stonesStr.forEach((item){
          jewelsStr.forEach((word){
                                if(item == word)
                    {
                      times++;
                    }
          });
        });
    return times;
  }
}