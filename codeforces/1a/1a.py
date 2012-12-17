#!/usr/bin/env python
from sys import stdin
if __name__=="__main__":
    for line in stdin:
        n, m, a = map(int, line.strip().split())
        nn = ((n / a) if n % a == 0 else n / a + 1)
        mm = ((m / a) if m % a == 0 else m / a + 1)
        print nn * mm
