#!/usr/bin/env python3
import sys
from datetime import datetime

try:
    firsttime = int(sys.argv[1])
except IndexError:
    print("{} requires at least one epoch timestamp".format(sys.argv[0]))
    sys.exit()

try:
    othertime = int(sys.argv[2])
except IndexError:
    othertime = int(datetime.timestamp(datetime.now()))

a = datetime.fromtimestamp(firsttime)
b = datetime.fromtimestamp(othertime)

print("Diff {}\n" "     {}".format(a, b))
print(abs(a - b))
