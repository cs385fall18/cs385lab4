#!/bin/sh
ab -p payload.json -T application/json -m POST -c 50 -n 10000 -s 1 -r http://35.185.241.145:8080/fibonacci > result1 && grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' result1 > output1

ab -p payload.json -T application/json -m POST -c 100 -n 10000 -s 1 -r http://35.185.241.145:8080/fibonacci > result2 && grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' result2 > output2

ab -p payload.json -T application/json -m POST -c 500 -n 10000 -s 1 -r http://35.185.241.145:8080/fibonacci > result3 && grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' result3 > output3

ab -p payload.json -T application/json -m POST -c 1000 -n 10000 -s 1 -r http://35.185.241.145:8080/fibonacci > result4 && grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' result4 > output4

ab -p payload.json -T application/json -m POST -c 2000 -n 10000 -s 1 -r http://35.185.241.145:8080/fibonacci > result5 && grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' result5 > output5

ab -p payload.json -T application/json -m POST -c 5000 -n 20000 -s 1 -r http://35.185.241.145:8080/fibonacci > result6 && grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' result6 > output6

ab -p payload.json -T application/json -m POST -c 10000 -n 30000 -s 1 -r http://35.185.241.145:8080/fibonacci > result7 && grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' result7 > output7

ab -p payload.json -T application/json -m POST -c 15000 -n 45000 -s 1 -r http://35.185.241.145:8080/fibonacci > result8 && grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' result8 > output8

cat output1 output2 output3 output4 output5 output6 output7 output8 > newfile

