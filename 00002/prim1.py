import sys, math, random
MAXV=31630
def prime_table():
    flag = [True]*MAXV
    for i in xrange(2, MAXV/2):
        if flag:
            for j in xrange(i*2, MAXV, i):
                flag[j] = False
    return [i for i in xrange(2, MAXV) if flag[i]]

table = prime_table()
n = int(sys.stdin.readline().strip())
for c in range(n):
    x, y = sys.stdin.readline().strip().split()
    x, y = max(int(x), 2), int(y)
    flag = [True] * (y - x + 1)

    for p in table:
        if p > y: break
        low = max(x/p*p, p*2)
        for j in xrange(low, y + 1, p):
            #print p, j
            if j >= x: flag[j-x] = False

    for f in xrange(0, y - x + 1):
        if flag[f]: print f + x
    if c < n - 1: print
