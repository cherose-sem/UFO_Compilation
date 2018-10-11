echo "Pinging Germany"
ping 139.59.132.185 -n 10 -l 32 >> ping_germany.txt
echo "Pinging USA"
ping 192.81.216.124 -n 10 -l 32 >> ping_USA.txt
echo "Pinging Singapore"
ping 128.199.180.131 -n 10 -l 32 >> ping_singapore.txt
echo "Finish & exiting"