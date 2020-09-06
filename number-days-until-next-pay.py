#!/usr/bin/env python3

import datetime
import calendar

now = datetime.datetime.now()
paymonth = 1 if now.month == 12 else now.month + 1
payyear = now.year if now.month != 12 else now.year + 1

first = datetime.date(payyear, paymonth, 1)
if first.weekday() == calendar.SUNDAY:
    firstweekday = first + datetime.timedelta(days=1)
elif first.weekday() == calendar.SATURDAY:
    firstweekday = first + datetime.timedelta(days=2)
else:
    firstweekday = first

print((firstweekday - now.date()).days)
