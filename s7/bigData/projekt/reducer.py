#!/usr/bin/env python3

import sys

current_film_name = None
current_actor_count = 0

for line in sys.stdin:
    film_name, number = line.strip().split("\t")
    number = int(number.strip())
    if current_film_name == film_name:
        current_actor_count += number
    else:
        if current_film_name:
            print(f"{current_film_name}\t{current_actor_count}")
        current_film_name = film_name
        current_actor_count = number


if current_film_name == film_name:
    print(f"{current_film_name}\t{current_actor_count}")
