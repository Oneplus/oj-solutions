import sys, math

n = int(sys.stdin.readline().strip())
pow5 = [int(math.pow(5, x+1)) for x in range(14)]
#print pow5
for case in range(n):
    x = int(sys.stdin.readline().strip())
    print sum([x / p for p in pow5])
