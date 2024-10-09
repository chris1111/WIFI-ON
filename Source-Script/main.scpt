-- By chris1111
do shell script "networksetup -setnetworkserviceenabled Wi-Fi Off"
delay 1
do shell script "networksetup -setnetworkserviceenabled Wi-Fi On"
