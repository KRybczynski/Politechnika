#!/usr/bin/env python3

import sys

FILM_NAME = 0
JOB = 3

for line in sys.stdin:
    values = line.split("\t")
    film_name = values[FILM_NAME]
    job = values[JOB]
    if job == "actress" or job == "self" or job == "actor":
        print(f"{film_name}\t1")