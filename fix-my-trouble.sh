#!/bin/sh -e
sudo touch /etc/systemd/system/fix-my-trouble.sh

echo #!/bin/sh -e > /etc/systemd/system/fix-my-trouble.sh
echo sudo setkeycodes 3a 42 >> /etc/systemd/system/fix-my-trouble.sh

sudo touch /etc/systemd/system/fix-my-trouble.service

echo [Unit] > /etc/systemd/system/fix-my-trouble.service
echo Description=Fix My Trouble >> /etc/systemd/system/fix-my-trouble.service
echo After=multi-user.target >> /etc/systemd/system/fix-my-trouble.service

echo [Service] >> /etc/systemd/system/fix-my-trouble.service
echo Type=idle >> /etc/systemd/system/fix-my-trouble.service
echo ExecStart=/etc/systemd/system/fix-my-trouble.sh >> /etc/systemd/system/fix-my-trouble.service

echo [Install] >> /etc/systemd/system/fix-my-trouble.service
echo WantedBy=multi-user.target >> /etc/systemd/system/fix-my-trouble.service

sudo chmod +x /etc/systemd/system/fix-my-trouble.sh
sudo chmod 644 /etc/systemd/system/fix-my-trouble.service

sudo systemctl daemon-reload
sudo systemctl enable /etc/systemd/system/fix-my-trouble.service
