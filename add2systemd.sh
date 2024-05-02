#!/bin/sh -e

sudo touch /etc/systemd/system/fix-my-kbd.sh

echo "#!/bin/sh -e" > /etc/systemd/system/fix-my-kbd.sh
echo "sudo setkeycodes 3a 42" >> /etc/systemd/system/fix-my-kbd.sh

sudo touch /etc/systemd/system/fix-my-kbd.service

echo "[Unit]" > /etc/systemd/system/fix-my-kbd.service
echo "Description=fix my kbd" >> /etc/systemd/system/fix-my-kbd.service
echo "After=multi-user.target" >> /etc/systemd/system/fix-my-kbd.service
echo "[Service]" >> /etc/systemd/system/fix-my-kbd.service
echo "Type=idle" >> /etc/systemd/system/fix-my-kbd.service
echo "ExecStart=/etc/systemd/system/fix-my-kbd.sh" >> /etc/systemd/system/fix-my-kbd.service
echo "[Install]" >> /etc/systemd/system/fix-my-kbd.service
echo "WantedBy=multi-user.target" >> /etc/systemd/system/fix-my-kbd.service

sudo chmod +x /etc/systemd/system/fix-my-kbd.sh
sudo chmod 644 /etc/systemd/system/fix-my-kbd.service

sudo systemctl daemon-reload
sudo systemctl enable /etc/systemd/system/fix-my-kbd.service
