class Solution {
    int count;
    public int solution(int[] numbers, int target) {
        int answer = 0;
        dfs(0,numbers,target,0);
        answer = count;
        return answer;
    }
    public void dfs(int index,int[] numbers, int target, int sum){
        if(index == numbers.length){
            if(sum == target){
                count++;
            }
            return;
        }
        dfs(index+1,numbers,target,sum-numbers[index]);
        dfs(index+1,numbers,target,sum+numbers[index]);
    }
}