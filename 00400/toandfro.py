import sys
while True:
    wd = int(sys.stdin.readline().strip())
    if wd == 0: break

    line = sys.stdin.readline().strip()
    ht = len(line)/wd

    out = ""
    for j in xrange(wd):
        out += "".join([(line[i*wd+j]
            if (i%2==0) else line[(i+1)*wd-j-1]) 
            for i in xrange(ht)])
    print out

