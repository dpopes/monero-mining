#!/bin/bash
set -ev

docker run -itd --name danielpops-moneropool -e username=4AKyvkb5H8UDcRfaUV4XwEGbscFaxiqXcDFPNkwyeNvkXh6z3tvAscScPK5Zvz7MXv2sKBt9ZJ7TZ9TL5ajppQkW73jjSHq servethehome/monero_cpu_moneropool
docker logs --follow danielpops-moneropool &
docker run -itd --name danielpops-xmrpooldotnet -e username=4AKyvkb5H8UDcRfaUV4XwEGbscFaxiqXcDFPNkwyeNvkXh6z3tvAscScPK5Zvz7MXv2sKBt9ZJ7TZ9TL5ajppQkW73jjSHq servethehome/monero_cpu_xmrpooldotnet
docker logs --follow danielpops-xmrpooldotnet &
