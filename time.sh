# cat /tmp/testscript.sh
#!/bin/bash

# sudo anonsurf start

runtime="5 minute"
endtime=$(date -ud "$runtime" +%s)

while [[ $(date -u +%s) -le $endtime ]]
do
    echo "Time Now: `date +%H:%M:%S`"
    echo "resete de 10 minutos"
    sudo anonsurf change
    wget -qO- http://ipecho.net/plain
    echo ""
    sleep 60
done