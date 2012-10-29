import sys, math
def factorial(n):
    if n == 1: return 1
    else: return n * factorial(n - 1)

t = int(sys.stdin.readline().strip())
for case in range(t):
    print factorial(int(sys.stdin.readline().strip()))
