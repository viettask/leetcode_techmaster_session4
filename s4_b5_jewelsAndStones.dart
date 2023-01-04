//Bài 5: https://leetcode.com/problems/jewels-and-stones/

class Solution {
  int numJewelsInStones(String jewels, String stones) {
                int times=0;
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

// class Solution {
//   int numJewelsInStones(String jewels, String stones) {
//         int times=0;
//         List<String> jewelsStr= jewels.split('');
//         List<String> stonesStr= stones.split('');
//         stonesStr.forEach((item){
//           jewelsStr.forEach((word){
//                                 if(item == word)
//                     {
//                       times++;
//                     }
//           });
//         });
//     return times;
//   }
// }
