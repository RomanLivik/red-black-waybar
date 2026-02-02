nmcli -t -f "ACTIVE,SSID,SIGNAL,BARS" dev wifi list | sed 's/\\:/_/g' | awk -F: '{print "{\"active\":\""$1"\",\"ssid\":\""$2"\",\"signal\":\""$3"\",\"bars\":\""$4"\"}"}' | jq -s '.' || echo "[]"
