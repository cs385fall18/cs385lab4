# Concurrency Level:|Requests per second:|(longest request)|98%'
echo "1" > replicas
grep -E 'Concurrency Level:' a_file | awk '{print $3}' > concurrency

grep -E 'Requests per second:' a_file | awk '{print $4}' > requests_per_sec

grep -E '(longest request)' a_file | awk '{print $2}' > longest_request

grep -E '98%' a_file | awk '{print $2}' > 98_percentile

cat replicas concurrency requests_per_sec longest_request 98_percentile> a_file2
