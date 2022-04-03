#!/bin/sh -e
sudo touch /etc/systemd/system/fix-my-trouble.sh

echo > #!/bin/sh -e
echo >> sudo setkeycodes 3a 42

sudo touch /etc/systemd/system/fix-my-trouble.service

echo > [Unit]
echo >> Description=Fix My Trouble
echo >> After=multi-user.target

echo >> [Service]
echo >> Type=idle
echo >> ExecStart=/etc/systemd/system/fix-my-trouble.sh

echo >> [Install]
echo >> WantedBy=multi-user.target

sudo chmod +x /etc/systemd/system/fix-my-trouble.sh
sudo chmod 644 /etc/systemd/system/fix-my-trouble.service

sudo systemctl daemon-reload
sudo systemctl enable /etc/systemd/system/fix-my-trouble.service
