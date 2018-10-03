#!/bin/sh
ab -p payload.json -T application/json -m POST -c 50 -n 10000 -s 100 -r http://35.185.241.145:8080/fibonacci > result1
#grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' > output1


echo "\n" > divider
echo "12" > replicas
grep -E 'Concurrency Level:' result1 | awk '{print $3}' > concurrency
grep -E 'Requests per second:' result1 | awk '{print $4}' > requests_per_sec
grep -E '(longest request)' result1 | awk '{print $2}' > longest_request
grep -E '98%' result1 | awk '{print $2}' > 98_percentile
cat replicas concurrency requests_per_sec longest_request 98_percentile divider > output1
rm replicas
rm concurrency
rm requests_per_sec
rm longest_request
rm 98_percentile
rm result1
rm divider

ab -p payload.json -T application/json -m POST -c 100 -n 10000 -s 100 -r http://35.185.241.145:8080/fibonacci > result2
#grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' > output2

echo "\n" > divider
echo "12" > replicas
grep -E 'Concurrency Level:' result2 | awk '{print $3}' > concurrency
grep -E 'Requests per second:' result2 | awk '{print $4}' > requests_per_sec
grep -E '(longest request)' result2 | awk '{print $2}' > longest_request
grep -E '98%' result2 | awk '{print $2}' > 98_percentile
cat replicas concurrency requests_per_sec longest_request 98_percentile divider > output2
rm replicas
rm concurrency
rm requests_per_sec
rm longest_request
rm 98_percentile
rm result2
rm divider

ab -p payload.json -T application/json -m POST -c 500 -n 10000 -s 100 -r http://35.185.241.145:8080/fibonacci > result3
#grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' > output3

echo "\n" > divider
echo "12" > replicas
grep -E 'Concurrency Level:' result3 | awk '{print $3}' > concurrency
grep -E 'Requests per second:' result3 | awk '{print $4}' > requests_per_sec
grep -E '(longest request)' result3 | awk '{print $2}' > longest_request
grep -E '98%' result3 | awk '{print $2}' > 98_percentile
cat replicas concurrency requests_per_sec longest_request 98_percentile divider > output3
rm replicas
rm concurrency
rm requests_per_sec
rm longest_request
rm 98_percentile
rm result3
rm divider

#echo "passes"
ab -p payload.json -T application/json -m POST -c 1000 -n 10000 -s 100 -r http://35.185.241.145:8080/fibonacci > result4
#grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' > output4

echo "\n" > divider
echo "12" > replicas
grep -E 'Concurrency Level:' result4 | awk '{print $3}' > concurrency
grep -E 'Requests per second:' result4 | awk '{print $4}' > requests_per_sec
grep -E '(longest request)' result4 | awk '{print $2}' > longest_request
grep -E '98%' result4 | awk '{print $2}' > 98_percentile
cat replicas concurrency requests_per_sec longest_request 98_percentile divider > output4
rm replicas
rm concurrency
rm requests_per_sec
rm longest_request
rm 98_percentile
rm result4
rm divider

#echo "passes 2"
ab -p payload.json -T application/json -m POST -c 2000 -n 10000 -s 100 -r http://35.185.241.145:8080/fibonacci > result5
#grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' > output5

echo "\n" > divider
echo "12" > replicas
grep -E 'Concurrency Level:' result5 | awk '{print $3}' > concurrency
grep -E 'Requests per second:' result5 | awk '{print $4}' > requests_per_sec
grep -E '(longest request)' result5 | awk '{print $2}' > longest_request
grep -E '98%' result5 | awk '{print $2}' > 98_percentile
cat replicas concurrency requests_per_sec longest_request 98_percentile divider > output5
rm replicas
rm concurrency
rm requests_per_sec
rm longest_request
rm 98_percentile
rm result5
rm divider

ab -p payload.json -T application/json -m POST -c 5000 -n 20000 -s 100 -r http://35.185.241.145:8080/fibonacci > result6
#grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' > output6

echo "\n" > divider
echo "12" > replicas
grep -E 'Concurrency Level:' result6 | awk '{print $3}' > concurrency
grep -E 'Requests per second:' result6 | awk '{print $4}' > requests_per_sec
grep -E '(longest request)' result6 | awk '{print $2}' > longest_request
grep -E '98%' result6 | awk '{print $2}' > 98_percentile
cat replicas concurrency requests_per_sec longest_request 98_percentile divider > output6
rm replicas
rm concurrency
rm requests_per_sec
rm longest_request
rm 98_percentile
rm result6
rm divider

ab -p payload.json -T application/json -m POST -c 10000 -n 30000 -s 100 -r http://35.185.241.145:8080/fibonacci > result7
#grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' > output7

echo "\n" > divider
echo "12" > replicas
grep -E 'Concurrency Level:' result7 | awk '{print $3}' > concurrency
grep -E 'Requests per second:' result7 | awk '{print $4}' > requests_per_sec
grep -E '(longest request)' result7 | awk '{print $2}' > longest_request
grep -E '98%' result7 | awk '{print $2}' > 98_percentile
cat replicas concurrency requests_per_sec longest_request 98_percentile divider > output7
rm replicas
rm concurrency
rm requests_per_sec
rm longest_request
rm 98_percentile
rm result7
rm divider

ab -p payload.json -T application/json -m POST -c 15000 -n 45000 -s 100 -r http://35.185.241.145:8080/fibonacci > result8
#grep -E 'Concurrency Level:|Requests per second:|(longest request)|98%' > output8

echo "\n" > divider
echo "12" > replicas
grep -E 'Concurrency Level:' result8 | awk '{print $3}' > concurrency
grep -E 'Requests per second:' result8 | awk '{print $4}' > requests_per_sec
grep -E '(longest request)' result8 | awk '{print $2}' > longest_request
grep -E '98%' result8 | awk '{print $2}' > 98_percentile
cat replicas concurrency requests_per_sec longest_request 98_percentile divider > output8

rm replicas
rm concurrency
rm requests_per_sec
rm longest_request
rm 98_percentile
rm result8
rm divider

cat output1 output2 output3 output4 output5 output6 output7 output8 > newfile

