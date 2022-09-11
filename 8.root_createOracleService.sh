cat > /usr/lib/systemd/system/oracle.service <<EOF
[Unit]
Description=The Oracle Database Service
# NFS requirement
#Requires=rpc-statd.service network.target nfs.service nfs-mountd.service local-fs.target remote-fs.target
#After=syslog.target network.target nfs.service nfs-mountd.service local-fs.target rpc-statd.service remote-fs.target
After=syslog.target network.target

[Service]
# systemd ignores PAM limits, so set any necessary limits in the service.
# Not really a bug, but a feature.
# https://bugzilla.redhat.com/show_bug.cgi?id=754285
LimitMEMLOCK=infinity
LimitNOFILE=65535

#Type=simple
# idle: similar to simple, the actual execution of the service binary is delayed
#       until all jobs are finished, which avoids mixing the status output with shell output of services.
Type=idle
RemainAfterExit=yes
User=oracle
Group=oinstall
Restart=no
ExecStart=/bin/bash -c '/home/oracle/scripts/start_all.sh'
ExecStop=/bin/bash -c '/home/oracle/scripts/stop_all.sh'

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable oracle.service
systemctl start oracle.service


