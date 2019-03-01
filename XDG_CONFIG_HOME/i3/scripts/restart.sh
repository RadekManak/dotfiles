#Detect displays and generate config from teplate
primary_display=$(xrandr | grep "primary" | cut -f 1 -d " ")
sed -e "s/\${primary_display}/$primary_display/" ~/.config/i3/config.template > ~/.config/i3/config
# Restart
i3-msg restart
sleep 0.2
notify-send "i3 restarted"
