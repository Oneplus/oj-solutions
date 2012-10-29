import sys
n=int(sys.stdin.readline().strip())
for c in xrange(n):
    num = sys.stdin.readline().strip()
    cnt = len(num)
    (start, end) = ((cnt/2, cnt/2) 
            if cnt % 2 == 1 else (cnt/2-1, cnt/2))
    while start >= 0 and end < len*num[start] == "9" and num[end] == "9":
        start -= 1
        end += 1
    (i, j) = (start, end)
    flag = False
    
