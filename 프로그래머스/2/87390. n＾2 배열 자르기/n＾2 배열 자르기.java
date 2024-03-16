import java.util.*;
class Solution {
    public int[] solution(int n, long left, long right) {
        int[] answer = new int[(int)(right-left)+1];
        for(int i=0;i<answer.length;i++){
            int x = (int)(left/n);
            int y = (int)(left%n);
            answer[i] = Math.max(x,y)+1;
            left+=1;
        }
        return answer;
    }
}