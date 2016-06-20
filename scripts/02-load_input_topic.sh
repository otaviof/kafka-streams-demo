#!/bin/bash -x

cat > /tmp/file-input.txt <<EOL
all streams lead to kafka
hello kafka streams
maybe join kafka summit
do what you wilt
shall be the whole of the law
EOL

while [ true ] ; do
    cat /tmp/file-input.txt | \
        kafka-console-producer \
            --broker-list localhost:9092 \
            --topic TextLinesTopic
    sleep 0.3
done

# EOF
