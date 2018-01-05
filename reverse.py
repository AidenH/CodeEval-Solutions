import sys

for i in open(sys.argv[1]):
    arr = i.split()
    print(' '.join(reversed(arr)))
