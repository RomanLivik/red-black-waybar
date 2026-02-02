history=$(dunstctl history)

if [ -z "$history" ] || [ "$history" == '{"data": [[]]}' ]; then
    echo "[]"
else
    echo "$history" | jq '.data[0] | .[0:5] | map({summary: .summary.data, body: .body.data})'
fi
