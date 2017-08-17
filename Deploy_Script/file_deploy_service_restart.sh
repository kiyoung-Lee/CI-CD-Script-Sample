#!/bin/bash
rsync -avrzP 'war_path'/*war 'username'@'targetAddress':/'directory'

ssh username@targetAddress <<EOF
 cd 'deploy directory'
 service 'servicename' restart
EOF

