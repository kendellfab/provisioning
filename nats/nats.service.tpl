[Unit]
Description=Nats server
After=network-online.target

[Service]
Restart=on-failure
ExecStart=/usr/local/bin/nats-server
Type=simple
User=nats
Group=nats

[Install]
WantedBy=multi-user.target