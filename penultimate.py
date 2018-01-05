import sys

for i in open(sys.argv[1]):
    arr = i.split()
    if len(arr) > 1:
        print(''.join(arr[len(arr)-2]))
    else:
        print(''.join(arr))
