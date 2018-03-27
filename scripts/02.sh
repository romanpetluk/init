#!/usr/bin/env bash
touch /var/log/update_script.log
sudo apt-get update | sudo tee -a /var/log/update_script.log
sudo apt-get upgrade | sudo tee -a /var/log/update_script.log
echo "00 4 * * 0 sh /home/user/init/scripts/02.sh" | crontab -