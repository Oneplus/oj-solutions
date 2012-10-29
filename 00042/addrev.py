import sys
n = int(sys.stdin.readline().strip())
for case in range(n):
    x, y = sys.stdin.readline().strip().split()
    print str(int(x[::-1]) + int(y[::-1]))[::-1].lstrip("0")
