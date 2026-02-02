channels=$(ls /sys/class/dmi/id/memory/ 2>/dev/null | wc -l)
if [ "$channels" -eq 0 ]; then
    channels=$(numfmt --field=2 --from-unit=Ki --to-unit=Gi < /proc/meminfo | grep MemTotal | awk '{print $2}')
    echo "2"
else
    echo "$channels"
fi
