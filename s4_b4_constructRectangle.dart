//Bài 4: https://leetcode.com/problems/construct-the-rectangle/description/

class Solution {
  List<int> constructRectangle(int area) {
    int L=0, W=0;
      for(int i=1;i<=area;i++)
      {
        if(area%i==0)
        {
          //Calculate value L & M to check 
          L=i;
          W=(area/L).toInt();
          if(L>=W)
          {
            //if condition exist, out of the loop to return [L,W]
            break;
          }
        }
      }
    return [L,W];
  }
}