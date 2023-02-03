class Solution:
    def maxArea(self, height: List[int]) -> int:
        result=0
        L,r=0, len(height)-1
        while L<r:
            area=(r-L)*min(height[L],height[r])
            result=max(result,area)
            if height[L]<height[r]:
                L+=1
            else:
                r-=1
        return result
