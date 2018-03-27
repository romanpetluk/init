ifconfig en0 ether | awk '/ether/{print $2}'
