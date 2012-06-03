import sys
fp=sys.stdin
for x in fp:
    if x.strip() == "42":
        break
    print x.strip()

