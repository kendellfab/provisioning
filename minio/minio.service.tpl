[Unit]
Description=minio
Documentation=https://docs.minio.io
Wants=network-online.target
After=network-online.target
AssertFileIsExecutable=/usr/local/bin/minio

[Service]
LimitNOFILE=65536

Type=simple
User=minio
Group=minio

EnvironmentFile=/etc/minio/minio.conf
ExecStartPre=/bin/bash -c "{ [ -z \"${MINIO_VOLUMES}\" ] && echo \"Variable MINIO_VOLUMES not set in /etc/minio/minio.conf\" && exit 1; } || true"

ExecStart=/usr/local/bin/minio server $MINIO_OPTS $MINIO_VOLUMES

KillSignal=SIGTERM
SendSIGKILL=no
SuccessExitStatus=0

[Install]
WantedBy=multi-user.target