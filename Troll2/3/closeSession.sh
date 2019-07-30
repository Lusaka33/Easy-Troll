while true
do
    sleep 100
    osascript -e "set Volume output $((1 + RANDOM % 100))"
    afplay troll.mp3
    sleep 100
done

