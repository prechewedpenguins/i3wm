nate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar right| tee -a /tmp/polybar1.log & disown
#polybar left | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
