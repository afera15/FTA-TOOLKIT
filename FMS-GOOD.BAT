//DISABLE WIFI
netsh interface set interface "Wi-Fi" disable

//RESTART LOCAL AREA NETWORK
netsh interface set interface "Local Area Connection" disable
netsh interface set interface "Local Area Connection" enable

//TURN OFF FIREWALL
netsh advfirewall set allprofiles state off

//SET DHCP
netsh interface ip set address "Local Area Connection" source=dhcp
netsh interface ip set dnsservers "Local Area Connection" source=dhcp

//DISPLAY NETWORK SETTING
netsh interface ip show config "Local Area Connection"
