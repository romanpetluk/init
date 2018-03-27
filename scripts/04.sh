#!/usr/bin/env bash
md5=$(md5sum -c /home/user/init/scripts/temp.md5)
ok=$"/home/user/init/scripts/temp.md5: OK"
md5sum /etc/crontab > /home/user/init/scripts/04.sh | crontab -
if [ "$md5" != "$ok" ];
then
echo "changes" | mail -s "crontab" root
fi