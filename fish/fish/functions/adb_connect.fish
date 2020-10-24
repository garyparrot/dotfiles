function adb_connect

adb tcpip 5555
sleep 1
adb connect 192.168.0.7:5555
end
