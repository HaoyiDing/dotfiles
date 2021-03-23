local hostIP_v6=$(ip addr show ppp0 | grep inet6 | sed 's/\/.*//g' | awk '{print $2}'  | grep 2408)
while [[ -z $hostIP_v6 ]]
  do
    sleep 0.5
    hostIP_v6=$(ip addr show ppp0 | grep inet6 | sed 's/\/.*//g' | awk '{print $2}'  | grep 2408)
  done
echo $hostIP_v6
