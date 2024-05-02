#!/bin/sh -e

sudo touch /etc/systemd/system/example.sh
sudo touch /etc/systemd/system/example.service

echo "[Unit]" > /etc/systemd/system/example.service
echo "Description=Example" >> /etc/systemd/system/example.service
echo "After=multi-user.target" >> /etc/systemd/system/example.service
echo "[Service]" >> /etc/systemd/system/example.service
echo "Type=idle" >> /etc/systemd/system/example.service
echo "ExecStart=/etc/systemd/system/example.sh" >> /etc/systemd/system/example.service
echo "[Install]" >> /etc/systemd/system/example.service
echo "WantedBy=multi-user.target" >> /etc/systemd/system/example.service

sudo chmod +x /etc/systemd/system/example.sh
sudo chmod 644 /etc/systemd/system/example.service

sudo systemctl daemon-reload
sudo systemctl enable /etc/systemd/system/example.service
