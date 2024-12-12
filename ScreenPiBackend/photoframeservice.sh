[Unit]
Description=Photo Frame
Wants=graphical.target
After=graphical.target

[Service]
Environment=DISPLAY=:0
Environment=XAUTHORITY=/home/hexaloop/.Xauthority
Environment=XDG_RUNTIME_DIR=/run/user/1000
Type=simple
ExecStart=/bin/bash /opt/digitalphotoframe/start_photoframe.sh
Restart=always
User=hexaloop
Group=hexaloop

[Install]
WantedBy=graphical.target
