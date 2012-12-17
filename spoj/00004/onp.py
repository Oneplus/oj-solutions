import sys

n = int(sys.stdin.readline().strip())
alpha = map(lambda x: chr(x+ord('a')), range(26))
ops = "(+-*/^)"
for c in xrange(n):
    exp = sys.stdin.readline().strip()
    optr = []; opnd = []
    for ch in exp:
        if ch in alpha: opnd.append(ch)
        if ch == "(": optr.append(ch)
        if ch == ")":
            while optr[-1] != "(":
                opnd.append("".join([opnd.pop(), opnd.pop()][::-1]) + optr.pop())
            optr.pop()
        if ch in ops[1:6]:
            while ops.find(ch)<= ops.find(optr[-1]):
                opnd.append("".join([opnd.pop(), opnd.pop()][::-1]) + optr.pop())
            optr.append(ch)
    print opnd[0]
