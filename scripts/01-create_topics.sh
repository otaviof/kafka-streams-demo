#!/bin/bash -x

for t in StreamsFileInput TextLinesTopic WordsWithCountsTopic ; do
    echo "Creating topic: '${t}'"

    kafka-topics \
        --create \
        --topic $t \
        --zookeeper 127.0.0.1:2181 \
        --partitions 1 \
        --replication-factor 1

    sleep 1
done

# EOF
