#!/bin/bash 

echo "[Unit]" > dwm_status.service
echo "Description=Conky Based Status Line for DWM" >> dwm_status.service
echo "" >> dwm_status.service
echo "[Service]" >> dwm_status.service
echo "Type=simple" >> dwm_status.service
echo "Environment=DISPLAY=:0" >> dwm_status.service
echo "Environment=XAUTHORITY=$HOME/.Xauthority" >> dwm_status.service
echo "ExecStart=/bin/bash /opt/dwm_status/dwm_status_service.sh" >> dwm_status.service
echo "" >> dwm_status.service
echo "[Install]" >> dwm_status.service
echo "WantedBy=multi-user.target" >> dwm_status.service

sudo mkdir -p /opt/dwm_status
sudo cp dwm_status.conky /opt/dwm_status/
sudo cp dwm_status_service.sh /opt/dwm_status/
sudo mv dwm_status.service /etc/systemd/system/
sudo chmod 644 /etc/systemd/system/dwm_status.service

systemctl start dwm_status.service
