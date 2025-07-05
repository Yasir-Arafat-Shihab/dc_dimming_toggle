FOR TOGGLE

##### Run this command in termux app to setup dc_dimming_toggle then add a termux_widget on home screen

```bash
curl https://raw.githubusercontent.com/ehhhSenpai/dc_dimming_toggle/main/setup.sh | bash
```

##### Termux must have SU access granted for toggle to work

FOR ONE TIME

#####❝DC Dimming❞

1.Install termux 

2.Write in termux☞termux-setup-storage
(Give storqge permission)

3.Write in termux☞ su 
(for Super User access)

4.Aprrove kernelSU or Give Magisk access to termux 
(root access) 

5. To turn on DC_DIM

```bash
su -c 'echo "1 0" > /sys/kernel/oplus_display/dimlayer_bl_en'
```

6. To turn off DC_DIM
```bash
su -c 'echo "0 0" > /sys/kernel/oplus_display/dimlayer_bl_en'
```
