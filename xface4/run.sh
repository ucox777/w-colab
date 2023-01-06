sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1

sudo service xrdp start > /dev/null 2>&1

sleep 41200
