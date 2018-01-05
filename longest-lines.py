import sys

if __name__ == '__main__':
    strings = []
    for i in open(sys.argv[1]):
        s = ' '.join(i.strip().split())
        strings.append(s)

    n = int(strings[0])
    del strings[0]
    strings.sort(key=len, reverse=True)

    for i in range(0, n):
        print(strings[i])
