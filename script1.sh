#!/bin/sh
ab -p payload.json -T application/json -m POST -c 100 -n 10000 -s 1 -r http://35.185.241.145:8080/fibonacci > resul$
grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' a_file > output2
