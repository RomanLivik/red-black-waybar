ps -eo comm,%cpu --sort=-%cpu | head -n 6 | tail -n 5 | awk '{print "{\"name\":\""$1"\",\"cpu\":\""$2"\"}"}' | jq -s '.'
