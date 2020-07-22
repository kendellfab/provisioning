[Unit]
Description=Nats streaming server
After=network-online.target

[Service]
Restart=on-failure
ExecStart=/usr/local/bin/nats-streaming-server --nats_server nats://localhost:4222 -cid local --debug=true -st file --dir /srv/nats/data --file_sync=false
Type=simple
User=nats
Group=nats

[Install]
WantedBy=multi-user.target