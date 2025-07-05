#!/data/data/com.termux/files/usr/bin/bash

status="$(su -c cat /sys/kernel/oplus_display/dimlayer_bl_en)"

if [[ "$status" == "0 0" ]]; then
  sleep 0.2
  echo "dc_dimming is currently DISABLED"
  sleep 0.3
  echo "Enabling.."
  su -c 'echo "1 0" > /sys/kernel/oplus_display/dimlayer_bl_en'
  sleep 0.4
  echo "dc_dimming is now ENABLED"
  sleep 0.5
  read -n 1 -p "Exit Now (y|n): " i
  echo
  if [[ -z "$i" ]]; then
    echo "Nothing entered, exit manually."
    sleep 1.0
  elif [[ "$i" =~ ^[Yy]$ ]]; then
    echo -e "Exiting..\n N.B. ☞ Rebooting will dismiss toggle"
    sleep 1.0
    su -c exit
  elif [[ "$i" =~ ^[Nn]$ ]]; then
    echo "Okay, exit manually."
    sleep 1.0
  else
    echo "Wrong input, exit manually."
    sleep 1.0
  fi

elif [[ "$status" == "0 1" ]]; then
  sleep 0.2
  echo "dc_dimming is currently ENABLED"
  sleep 0.3
  echo "Disabling.."
  su -c 'echo "1 0" > /sys/kernel/oplus_display/dimlayer_bl_en'
  sleep 0.4
  echo "dc_dimming is now DISABLED"
  sleep 0.5
  read -n 1 -p "Exit Now (y|n): " i
  echo
  if [[ -z "$i" ]]; then
    echo "Nothing entered, exit manually."
    sleep 1.0
  elif [[ "$i" =~ ^[Yy]$ ]]; then
    echo -e "Exiting..\n N.B. ☞ Rebooting will dismiss toggle"
    sleep 1.0
    su -c exit
  elif [[ "$i" =~ ^[Nn]$ ]]; then
    echo "Okay, exit manually."
    sleep 1.0
  else
    echo "Wrong input, exit manually."
    sleep 1.0
  fi

else
  echo "Unknown dimlayer_bl_en value: '$status'"
  sleep 1
fi
