#!/bin/bash

cat > index.html <<EOF
<h1>Database Address and Port</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
<p>This needs to be replaced to your required script</p>
EOF

nohup busybox httpd -f -p "${server_port}" &
