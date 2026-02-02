case $1 in
    toggle)
        status=$(nmcli radio wifi)
        if [ "$status" = "enabled" ]; then
            nmcli radio wifi off
        else
            nmcli radio wifi on
        fi
        ;;
    connect)
        SSID="$2"
        active=$(nmcli -t -f ACTIVE,SSID dev wifi | grep "^*:$SSID")
        
        if [ -z "$active" ]; then
            nmcli dev wifi connect "$SSID"
        fi
        ;;
esac
