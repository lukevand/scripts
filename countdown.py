#!/usr/bin/env python3
import argparse
import sys
from datetime import datetime
from time import mktime, sleep

import parsedatetime  # type: ignore


def countdown(current_time, end_time):
    diff = end_time - current_time
    rem = int(diff.total_seconds())

    print("Time until {}".format(end_time))
    while True:
        try:
            print("    {:,}s".format(rem), end='\r')
            sleep(1)
            rem -= 1
        except KeyboardInterrupt:
            print("", end='\r')
            print()
            sys.exit()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("user_time", type=str, help='a time or date')
    args = parser.parse_args()

    now = datetime.now()
    cal = parsedatetime.Calendar()

    time_struct, parse_status = cal.parse(args.user_time)
    while parse_status == 0:
        arg = input("Did not understand time, try again: ")
        time_struct, parse_status = cal.parse(arg)
    die = datetime.fromtimestamp(mktime(time_struct))

    countdown(now, die)
