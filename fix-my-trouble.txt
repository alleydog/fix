# fix-my-trouble.sh
sudo nano /etc/systemd/system/fix-my-trouble.sh

# >> fix-my-trouble.sh
#!/bin/sh -e
sudo setkeycodes 3a 42

# fix-my-trouble.service
sudo nano /etc/systemd/system/fix-my-trouble.service

# >> fix-my-trouble.service
[Unit]
Description=Fix My Trouble
After=multi-user.target

[Service]
Type=idle
ExecStart=/etc/systemd/system/fix-my-trouble.sh

[Install]
WantedBy=multi-user.target

# chmod
sudo chmod +x /etc/systemd/system/fix-my-trouble.sh
sudo chmod 644 /etc/systemd/system/fix-my-trouble.service

# systemctl
sudo systemctl daemon-reload
sudo systemctl enable /etc/systemd/system/fix-my-trouble.service
