#!/usr/bin/python3
if __name__ == "__main__":
    from sys import argv
    sumof = 0
    for i in range (1, len(argv)):
    sumof += int(argv[i])
    print ("{}".format(sumof))
