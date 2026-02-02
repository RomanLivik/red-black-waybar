
case $1 in
    toggle)
        dunstctl set-paused toggle
        ;;
    status)
        status=$(dunstctl is-paused)
        if [ "$status" = "true" ]; then
            echo "DND ON"
        else
            echo "DND OFF"
        fi
        ;;
    clear)
        dunstctl close-all
        ;;
esac
