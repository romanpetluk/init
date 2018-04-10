#!/usr/bin/env bash
sudo md5sum /etc/crontab > t.md5
var=$(md5sum -c t.md5)
if [ "$var" != "/etc/crontab: OK" ];
then
    sudo echo "file has been changed" | sudo mail -s "report" root
fi
echo "0 0 * * * /home/user/init/scripts/04.sh" | crontab -