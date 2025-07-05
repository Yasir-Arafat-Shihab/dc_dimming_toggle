#!/data/data/com.termux/files/usr/bin/bash

curl -o $HOME/dc_dimming_toggle.sh https://raw.githubusercontent.com/Yasir-Arafat-Shihab/dc_dimming_toggle/main/dc_dimming_toggle.sh
mkdir -p $HOME/.shortcuts
mv $HOME/dc_dimming_toggle.sh $HOME/.shortcuts/
chmod +x $HOME/.shortcuts/dc_dimming_toggle.sh
if pm list packages | grep -q "com.termux.widget"; then
  echo "You may create a widget now"
else
  echo "Install termux_widget app and create a widget"
fi
exit 0
