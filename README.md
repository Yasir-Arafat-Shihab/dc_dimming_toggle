##### `FOR TOGGLE`

> ***Run this command in termux app to setup dc_dimming_toggle then add a termux_widget on home screen***

Code:
```bash
curl https://raw.githubusercontent.com/Yasir-Arafat-Shihab/dc_dimming_toggle/main/setup.sh | bash
```

> ***Termux must have SU access granted for toggle to work***

> **After this add termux dc dim shortcut from widget**

##### `FOR ONE TIME {FORCED}`

1.Install termux 

2.Write in termux☞termux-setup-storage
(Give storqge permission)

3.Write in termux☞ su 
(for Super User access)

4.Aprrove kernelSU or Give Magisk access to termux 
(root access) 

5. >To turn on DC_DIM

Code:
```bash
su -c 'echo "1 0" > /sys/kernel/oplus_display/dimlayer_bl_en'
```

6. >To turn off DC_DIM

Code:
```bash
su -c 'echo "0 0" > /sys/kernel/oplus_display/dimlayer_bl_en'
```

##### `For Oneplus (Fixing DC dimming)​`

><ins>*Variant ◑1*</ins>

On your PC using ADB type:

Code:
```adb shell
settings put system oneplus_dc_dimming_value 1
```
Done. To disable change "1" to "0".
What it does? It sets the variable for DC dimming to 1 (enabled) or to 0 (disabled). Variant 2 does the same thing but it is accessed by opening up a hidden panel. As both require ADB this one is quicker and easier.​


><ins>*Variant ◑2*</ins>

On your PC using ADB type:

Code:
```adb shell
am start-activity -a oneplus.intent.action.ONEPLUS_LAB_FEATURE_DETAILS -e oneplus_lab_feature_key oneplus_dc_dimming_value
```

The settings panel for DC dimming will now start on your device
Enable or disable it as you please ;)


What it does? It starts the part of the OnePlus Lab that contains DC dimming. It is still there but for some reason it is hidden. The command will start the panel and let you enable or disable it.
