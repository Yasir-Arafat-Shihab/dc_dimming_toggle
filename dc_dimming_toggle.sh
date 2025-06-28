#!/data/data/com.termux/files/usr/bin/bash

status="$(su -c cat /sys/kernel/oplus_display/dimlayer_bl_en)"

if [[ "$status" == "0 0" ]]; then
  sleep 0.1
  echo "dc_dimming is currently DISABLED"
  sleep 0.2
  echo "Enabling.."
  su -c 'echo "1 0" > /sys/kernel/oplus_display/dimlayer_bl_en'
  sleep 0.4
  echo "dc_dimming is now ENABLED"
  sleep 0.2
  read -n 1 -p "Reboot Now (y|n): " i
  echo
  if [[ -z "$i" ]]; then
    echo "Nothing entered, reboot manually."
    sleep 0.3
  elif [[ "$i" =~ ^[Yy]$ ]]; then
    echo "Rebooting.."
    sleep 0.3
    su -c reboot
  elif [[ "$i" =~ ^[Nn]$ ]]; then
    echo "Okay, reboot manually."
    sleep 0.3
  else
    echo "Wrong input, reboot manually."
    sleep 0.3
  fi

elif [[ "$status" == "0 1" ]]; then
  sleep 0.1
  echo "dc_dimming is currently ENABLED"
  sleep 0.2
  echo "Disabling.."
  su -c 'echo "0 0" > /sys/kernel/oplus_display/dimlayer_bl_en'
  sleep 0.4
  echo "dc_dimming is now DISABLED"
  sleep 0.2
  read -n 1 -p "Reboot Now (y|n): " i
  echo
  if [[ -z "$i" ]]; then
    echo "Nothing entered, reboot manually."
    sleep 0.3
  elif [[ "$i" =~ ^[Yy]$ ]]; then
    echo "Rebooting.."
    sleep 0.3
    su -c reboot
  elif [[ "$i" =~ ^[Nn]$ ]]; then
    echo "Okay, reboot manually."
    sleep 0.3
  else
    echo "Wrong input, reboot manually."
    sleep 0.3
  fi

else
  echo "Unknown dimlayer_bl_en value: '$status'"
  sleep 1
fi
